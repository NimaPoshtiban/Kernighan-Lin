#ifndef KL_PARTITION_H
#define KL_PARTITION_H

#include <Qstring>
#include <vector>

using std::vector;

/* =========================
   Global Problem Parameters
   ========================= */

/**
 * @brief Total number of nodes in the hypergraph
 */
static int N{};

/**
 * @brief Total number of edges in the hypergraph
 */
static int M{};

/* =========================
   Hypergraph Storage
   ========================= */
/**
 * @brief Adjacency matrix storing edge weights
 * 
 * Each row corresponds to a node. 
 * edges[i][j] is the weight of the edge from node i to node j.
 * Diagonal elements (i==j) represent the node itself and are zero.
 */
static vector<vector<int>> edges;

/* =========================
   Main Partition
   ========================= */

/**
 * @brief Partition data structure
 * 
 * part[0] and part[1] store the clusters in partition 0 and 1 respectively.
 * Each cluster is a vector of node indices.
 */
static std::array<std::vector<std::vector<int>>, 2> part;

/* =========================
   Clustering 
   ========================= */

/**
 * @brief Computes variance of a cluster
 *
 * Variance is used to measure how "spread out" the connection weights are 
 * within a cluster. Minimizing variance when merging clusters ensures that 
 * highly connected nodes are grouped together, improving cluster cohesion. (as the the professor mentioned)
 * 
 * Given a cluster \f$C\f$ of nodes, let \f$w_{uv}\f$ be the weight of the 
 * edge from node \f$u\f$ to node \f$v\f$. The variance is computed as:
 *
 * \f[
 * \text{Var}(C) = \frac{1}{|C|\cdot N} \sum_{u \in C} \sum_{v=0}^{N-1} w_{uv}^2
 * - \left(\frac{1}{|C|\cdot N} \sum_{u \in C} \sum_{v=0}^{N-1} w_{uv} \right)^2
 * \f]
 *
 * where \f$N\f$ is the total number of nodes in the hypergraph. 
 *
 * Lower variance indicates that nodes in the cluster have more uniform
 * and strong connections among themselves.
 *
 * @param C Cluster of nodes
 * @return Variance value
*/
double cluster_variance(const vector<int> &C) noexcept;
/**
 * @brief Performs clustering merge on a given partition
 * 
 * Iteratively merges clusters if variance decreases.
 * 
 * @param p Partition index (0 or 1)
 */
void cluster_partition(int p) noexcept;

/* =========================
   Metrics / Logging
   ========================= */
/**
 * @brief Stores cut size after each KL swap
 */
static vector<int> cut_trace; // cut per iter

/* =========================
   Initialization 
   ========================= */

/**
 * @brief Initializes partitions from an adjacency matrix file
 * 
 * @param filepath Path to csv file containing adjacency matrix (file extension is not important)
 */
void initial_partition(QString filepath) noexcept;

/* =========================
   Evaluation
   ========================= */

/**
 * @brief Computes total cut size for current partition
 * 
 * Cut is defined as sum of edge weights from partition 0 to partition 1.
 * @return Total cut value
 */
int compute_cut() noexcept;
/**
 * @brief Computes D(V) for a cluster
 * 
 * D(V) = external_connections - internal_connections
 * 
 * @param C Cluster of nodes
 * @param p Partition index (0 or 1)
 * @return Difference between external and internal connections
 */
int compute_DV(const vector<int> &C, int p) noexcept;

/**
 * @brief Computes KL gain for swapping two clusters
 * 
 * @param A Cluster from partition 0
 * @param B Cluster from partition 1
 * @return KL gain value
 */
int kl_gain(const vector<int> &A, const vector<int> &B) noexcept;

/* =========================
   KL Algorithm
   ========================= */
/**
 * @brief Performs one pass of the Kernighan–Lin algorithm
 * 
 * Selects cluster pairs to swap to maximize gain. Records cut evolution in cut_trace.
 */
void kl_pass() noexcept;

/* =========================
   Output (FILE-BASED ONLY)
   ========================= */
/**
 * @brief Writes node-to-partition mapping to a file
 * 
 * Format: node_index partition_index
 * 
 * @param filename Output file path
 */
void write_partition(const char *filename);

/**
 * @brief Writes final cut and cluster variances to a file
 * 
 * Also writes the evolution of cuts stored in cut_trace.
 * 
 * @param filename Output file path
 */
void write_metrics(const char *filename);

/**
 * @brief Writes cut evolution per iteration to a CSV file
 * 
 * Format: step,cut_value
 * 
 * @param filename Output file path
 */
void write_trace(const char *filename);
#endif
