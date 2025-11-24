/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.nimaposhtiban.kernighanlin;

import java.util.ArrayList;

/**
 *
 * @author Nima
 */
public class KernighanLin {

    public Graph KGraph;
    public ArrayList<Vertex> UnchosenA;
    public ArrayList<Vertex> UnchosenB;
    private int G = 0;

    public KernighanLin(Graph g) {
        KGraph = g;
    }

    public void Start() {
        UnchosenA = KGraph.GroupA;
        UnchosenB = KGraph.GroupB;
        int NCutSize = Integer.MAX_VALUE;
        int StepsCount = KGraph.Vertices.size() / 2;
        int gmaxi = 0;
        int gmax = 0;
        NCutSize = KGraph.GetCutSize();
        System.out.println("Cutsize : " + NCutSize);
        int i = 0;
        while (i < StepsCount) {
            System.out.println("Step " + i);

            for (int z = 0; z < UnchosenA.size(); z++) {
                System.out.println("Unchosen A: " + UnchosenA.get(z).Num + " cost: " + UnchosenA.get(z).GetCost());
            }

            for (int z = 0; z < UnchosenB.size(); z++) {
                System.out.println("Unchosen B: " + UnchosenB.get(z).Num + " cost: " + UnchosenB.get(z).GetCost());
            }
            OneSwap();
            int cost = KGraph.GetCutSize();
//            System.out.println("Swap cost: " + cost);
            System.out.flush();
            if (G > gmax) {
                gmax = G;
                gmaxi = i;
            }
            i++;
        }
        // }
        KGraph.CreateRandomGroups();
        UnchosenA = KGraph.GroupA;
        UnchosenB = KGraph.GroupB;
        for (int k = 0; k <= gmaxi; k++) {
            OneSwap();
        }
        PrintResult();
    }

    public void OneSwap() {
        int g_max = Integer.MIN_VALUE;
        Vertex[] pair = new Vertex[2];
        for (int i = 0; i < UnchosenA.size(); i++) {
            for (int k = 0; k < UnchosenB.size(); k++) {
                int c = 0;
                if (KGraph.Edges.contains(new Edge(UnchosenA.get(i).Num, UnchosenB.get(k).Num)) || KGraph.Edges.contains(new Edge(UnchosenB.get(k).Num, UnchosenA.get(i).Num))) {
                    c++;
                }
                int g = UnchosenA.get(i).GetCost() + UnchosenB.get(k).GetCost() - 2 * c;

                if (g_max < g) {
                    g_max = g;
                    pair[0] = UnchosenA.get(i);
                    pair[1] = UnchosenB.get(k);
                }
            }
        }
        if (pair[0] != null && pair[1] != null) {
            UnchosenA.remove(pair[0]);
            UnchosenB.remove(pair[1]);
            Swap(pair[0], pair[1]);
            System.out.println("gain:" + G);
        }
        G += g_max;
    }

    public void Swap(Vertex a, Vertex b) {
        KGraph.Vertices.get(a.Num).Group = "B";
        KGraph.Vertices.get(b.Num).Group = "A";
    }

    public void PrintResult() {

        System.out.println("----------------------------------");
        System.out.println("Results:");
        for (var e : KGraph.Vertices) {
            System.out.println("Vertex: " + e.Num + " group: " + e.Group);
        }
        System.out.println("CutSize: " + KGraph.GetCutSize());

    }
}
