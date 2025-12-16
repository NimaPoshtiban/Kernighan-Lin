/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nimaposhtiban.kernighanlin;

import java.io.File;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Nima
 */
class Program {

    public static Graph ReadGraph(String filename) throws FileNotFoundException, IOException {
        Scanner s = new Scanner(new File(filename));
        ArrayList<String> ch1 = new ArrayList<>();

        while (s.hasNext()) {
            ch1.add(s.nextLine());

        }
        s.close();
        int count = ch1.size();
//        if ((count <= 0 || count % 2 != 0) || ch1.size() != count) {
//            System.err.println("Error");
//            return null;
//        } else {
        StringReader st = new StringReader(filename);
        var matrix = new int[count][count];

        try {

            for (int i = 0; i < matrix.length; i++) {
                String[] ch = ch1.get(i).split(" ");
                for (int j = 0; j < matrix.length; j++) {
                    matrix[i][j] = Integer.parseInt(ch[j]);
                }
            }
        } catch (NumberFormatException ex) {
            System.err.println(ex.getMessage());
        }
        st.close();
        ArrayList<Edge> edges = new ArrayList<>();
        ArrayList<Vertex> vertex = new ArrayList<>();
        for (int i = 0; i < matrix.length; i++) {
            vertex.add(new Vertex(i));
        }
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix.length; j++) {
                if (1 == matrix[i][j]) {
                    Edge e = new Edge(i, j);
                    Edge e1 = new Edge(j, i);
                    if (edges.contains(e) == false && edges.contains(e1) == false) {
                        vertex.get(i).Edges.add(e);
                        vertex.get(j).Edges.add(e);
                        edges.add(e);
                    }
                }
            }
        }
        return new Graph(vertex, edges);
//        }
    }

    public static void main(String[] args) throws IOException {
        Graph g = ReadGraph("graph1.txt");
        if (null != g) {
            KernighanLin kl = new KernighanLin(g);
            kl.Start();
        }
    }
}
