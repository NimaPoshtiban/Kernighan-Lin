#include <QCoreApplication>
#include <QDebug>
#include <QFile>
#include <QString>
#include "kl_partition.hpp"

/**
 * @file main.cpp
 * @brief Entry point for the KL partition program
 *
 * This program reads an adjacency matrix from a CSV file specified 
 * via command line or console input, performs KL partitioning with 
 * clustering, and writes results to output files:
 * - partition.txt : node -> partition mapping
 * - metrics.txt   : cut and cluster variance metrics
 * - trace.csv     : cut evolution during KL swaps
 *
 * Usage:
 * @code
 * ./KL input.csv
 * @endcode
 */

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);
    QString filepath;

    if (argc >= 2) {
        filepath = argv[1];
    } else {
        filepath = QCoreApplication::applicationDirPath() + "/example.txt";
    }

    if (!QFile(filepath).exists()) {
        qCritical() << "Default file not found: " << filepath.toStdString() << "\n";
    }

    initial_partition(filepath);
    cluster_partition(0);
    cluster_partition(1);
    kl_pass();

    write_partition("partition.txt");
    write_metrics("metrics.txt");
    write_trace("trace.csv");

    return app.exec();
}
