#include "kl_partition.hpp"
#include <QFile>
#include <QMap>
#include <QTextStream>
#include <Qstring>
/**
 * @brief Initializes the partitions from a CSV adjacency matrix file
 *
 * Reads a CSV file where each row corresponds to a node and contains
 * edge weights to all other nodes. Diagonal elements represent the node itself
 * and are ignored.
 * Initializes a simple even-odd partition:
 * nodes 0,2,4,... go to partition 0, others to partition 1.
 *
 * @param filepath Path to the CSV file containing adjacency matrix
 */
void initial_partition(QString filepath) noexcept
{
    QFile file(filepath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return;
    edges = vector<vector<int>>();
    part = std::array<std::vector<std::vector<int>>, 2>();
    QTextStream in(&file);
    while (!in.atEnd()) {
        QString line = in.readLine();
        N++;
        M = line.split(",").length();
        vector<int> edge = vector<int>();
        for (auto &el : line.split(",")) {
            edge.push_back(el.toLongLong());
        }
        edges.push_back(std::move(edge));
    }

    part[0].clear();
    part[1].clear();

    for (int i = 0; i < N; ++i) {
        if (0 == i % 2)
            part[0].push_back({i});
        else
            part[1].push_back({i});
    }
}
/**
 * @brief Computes the total cut for current partitions
 *
 * Cut is defined as the sum of all edge weights from nodes in partition 0
 * to nodes in partition 1.
 *
 * @return Total cut value
 */
int compute_cut() noexcept
{
    int cut = 0;

    for (const auto &A : part[0]) {
        for (int u : A) {
            for (const auto &B : part[1]) {
                for (int v : B) {
                    cut += edges[u][v];
                }
            }
        }
    }
    return cut;
}
/**
 * @brief Computes D(V) for a cluster
 *
 * D(V) = external_connections - internal_connections
 *
 * External connections are edges from this cluster to all clusters
 * in the opposite partition.
 * Internal connections are edges from this cluster to other clusters
 * in the same partition.
 *
 * @param C Cluster of nodes
 * @param p Partition index (0 or 1)
 * @return Difference between external and internal connections
 */
int compute_DV(const vector<int> &C, int p) noexcept
{
    int external_connections = 0;
    int internal_connections = 0;

    for (int u : C) {
        for (const auto &cl : part[p]) {
            if (&cl == &C)
                continue;
            for (int v : cl)
                internal_connections += edges[u][v];
        }

        for (const auto &cl : part[1 - p]) {
            for (int v : cl)
                external_connections += edges[u][v];
        }
    }
    return external_connections - internal_connections;
}
/**
 * @brief Computes the KL gain of swapping two clusters
 *
 * Gain = D(A) + D(B) - 2 * edge_sum_between_A_B
 *
 * @param A Cluster from partition 0
 * @param B Cluster from partition 1
 * @return KL gain value
 */

/**
 * @brief Performs one Kernighan–Lin pass
 *
 * Swaps cluster pairs between partitions to maximize gain.
 * Records the cut evolution in global cut_trace.
 *
 * Algorithm:
 * 1. For each unlocked cluster in partition 0, compute gain with each
 *    unlocked cluster in partition 1.
 * 2. Select the pair with maximum gain and swap them.
 * 3. Lock the swapped clusters.
 * 4. Repeat until all clusters are locked or no positive gain.
 * 5. Rollback swaps after best prefix sum of gains.
 */
int kl_gain(const vector<int> &A, const vector<int> &B) noexcept
{
    int Dab = 0;
    for (int u : A)
        for (int v : B)
            Dab += edges[u][v];

    return compute_DV(A, 0) + compute_DV(B, 1) - 2 * Dab; // ▲g
}

void kl_pass() noexcept
{
    int n0 = part[0].size();
    int n1 = part[1].size();

    vector<bool> lock0(n0, false);
    vector<bool> lock1(n1, false);

    vector<int> idx0, idx1, gains;
    cut_trace.clear();
    cut_trace.push_back(compute_cut());
    for (int step = 0; step < std::min(n0, n1); ++step) {
        int best_g = INT_MIN;
        int bi = -1, bj = -1;

        for (int i = 0; i < n0; ++i) {
            if (lock0[i])
                continue;

            for (int j = 0; j < n1; ++j) {
                if (lock1[j])
                    continue;

                int g = kl_gain(part[0][i], part[1][j]);
                if (g > best_g) {
                    best_g = g;
                    bi = i;
                    bj = j;
                }
            }
        }

        if (bi < 0)
            break;

        lock0[bi] = true;
        lock1[bj] = true;

        idx0.push_back(bi);
        idx1.push_back(bj);
        gains.push_back(best_g);

        std::swap(part[0][bi], part[1][bj]);
    }

    int sum = 0, best = INT_MIN, k = -1;

    for (int i = 0; i < gains.size(); ++i) {
        sum += gains[i];
        if (sum > best) {
            best = sum;
            k = i;
        }
    }

    // rollback swaps after best prefix
    for (int i = gains.size() - 1; i > k; --i) {
        std::swap(part[0][idx0[i]], part[1][idx1[i]]);
        cut_trace.push_back(compute_cut());
    }
}
/**
 * @brief Computes variance of a cluster
 *
 * Variance is calculated over all edge weights within the cluster.
 *
 * @param C Cluster of nodes
 * @return Variance value
 */
double cluster_variance(const vector<int> &C) noexcept
{
    double sum = 0.0, sum2 = 0.0;
    int cnt = 0;

    for (int u : C) {
        for (int v = 0; v < N; ++v) {
            double x = edges[u][v];
            sum += x;
            sum2 += x * x;
            cnt++;
        }
    }

    double mean = sum / cnt;
    return (sum2 / cnt) - (mean * mean);
}
/**
 * @brief Performs clustering merge for a given partition
 *
 * Iteratively merges clusters if combined variance decreases.
 *
 * @param p Partition index (0 or 1)
 */
void cluster_partition(int p) noexcept
{
    vector<vector<int>> &clusters = part[p];
    vector<bool> merged(clusters.size(), false);
    vector<vector<int>> result;

    for (int i = 0; i < clusters.size(); ++i) {
        if (merged[i])
            continue;

        vector<int> cur = clusters[i];
        double var_cur = cluster_variance(cur);

        for (int j = i + 1; j < clusters.size(); ++j) {
            if (merged[j])
                continue;

            vector<int> tmp = cur;
            tmp.insert(tmp.end(), clusters[j].begin(), clusters[j].end());

            double var_new = cluster_variance(tmp);
            double var_old = var_cur + cluster_variance(clusters[j]);

            if (var_new < var_old) {
                cur = std::move(tmp);
                var_cur = var_new;
                merged[j] = true;
            }
        }

        result.push_back(std::move(cur));
    }

    clusters.swap(result);
}

/**
 * @brief Writes node-to-partition mapping to a file
 *
 * Format: node_index partition_index
 *
 * @param filename Output file path
 */
void write_partition(const char *filename)
{
    QFile file(filename);
    if (!file.open(QFile::WriteOnly | QFile::Truncate))
        return;

    QTextStream out(&file);

    for (int p = 0; p < 2; ++p) {
        for (const auto &cl : part[p]) {
            for (int v : cl) {
                out << v << " " << p << "\n";
            }
        }
    }
}
/**
 * @brief Writes final cut evolution and cluster variances to a file
 *
 * Also writes all cut values stored in cut_trace.
 *
 * @param filename Output file path
 */
void write_metrics(const char *filename)
{
    QFile file(filename);
    if (!file.open(QFile::WriteOnly | QFile::Truncate))
        return;

    QTextStream out(&file);

    double var0 = 0.0, var1 = 0.0;
    for (const auto &c : part[0])
        var0 += cluster_variance(c);
    for (const auto &c : part[1])
        var1 += cluster_variance(c);
    for (const auto &v : cut_trace)
        out << "CUT :" << v << "\r\n";
    out << "VAR Partition A :" << var0 << "\r\n";
    out << "VAR Partition B :" << var1 << "\r\n";
}
/**
 * @brief Writes cut evolution per iteration to CSV
 *
 * Format: step,cut_value
 *
 * @param filename Output CSV file path
 */
void write_trace(const char *filename)
{
    QFile file(filename);
    if (!file.open(QFile::WriteOnly | QFile::Truncate))
        return;

    QTextStream out(&file);
    for (int i = 0; i < cut_trace.size(); ++i)
        out << i << "," << cut_trace[i] << "\r\n";
}
