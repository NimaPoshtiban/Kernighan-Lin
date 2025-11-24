/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nimaposhtiban.kernighanlin;

import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Nima
 */
public class Graph {

    public ArrayList<Edge> Edges;
    public ArrayList<Vertex> Vertices;
    public ArrayList<Vertex> GroupA;
    public ArrayList<Vertex> GroupB;
    public HashMap<Integer, Vertex> VertexMap;

    public Graph(ArrayList<Vertex> v, ArrayList<Edge> e) {
        Vertices = v;
        Edges = e;
        VertexMap = new HashMap<>();
        for (var a : Vertices) {
            VertexMap.put(a.Num, a);
        }
        for (var e1 : Edges) {
            e1.LeftVertex = VertexMap.get(e1.LeftNum);
            e1.RightVertex = VertexMap.get(e1.RightNum);
        }
        GroupA = new ArrayList<>();
        GroupB = new ArrayList<>();
        CreateRandomGroups();
    }

    public final void CreateRandomGroups() {
        for (int i = 0; i < Vertices.size() / 2; i++) {
            Vertices.get(i).Group = "A";
            GroupA.add(Vertices.get(i));
        }
        for (int i = Vertices.size() / 2; i < Vertices.size(); i++) {
            Vertices.get(i).Group = "B";
            GroupB.add(Vertices.get(i));
        }
    }

    public int GetCutSize() {
        int size = 0;
        for (var e : Edges) {
            if (!Vertices.get(e.RightNum).Group.equals(Vertices.get(e.LeftNum).Group)) {
                size++;
            }
        }
        return size;
    }
}
