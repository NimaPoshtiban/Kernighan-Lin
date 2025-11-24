/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nimaposhtiban.kernighanlin;

import java.util.ArrayList;
import java.util.Objects;

/**
 *
 * @author Nima
 */
public class Vertex {

    public int Num;
    public ArrayList<Edge> Edges;
    public String Group;

    public Vertex() {
        Edges = new ArrayList<>();
    }

    public Vertex(int num) {
        Num = num;
        Edges = new ArrayList<>();
    }

    @Override
    public String toString() {
        return "Vertex{" + "Num=" + Num + ", Edges=" + Edges + ", Group=" + Group + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 89 * hash + this.Num;
        hash = 89 * hash + Objects.hashCode(this.Edges);
        hash = 89 * hash + this.Group.hashCode();
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Vertex other = (Vertex) obj;
        if (this.Num != other.Num) {
            return false;
        }
        if (this.Group == null ? other.Group != null : !this.Group.equals(other.Group)) {
            return false;
        }
        return Objects.equals(this.Edges, other.Edges);
    }

    public void AddEdge(Edge edge) {
        if (!Edges.contains(edge)) {
            Edges.add(edge);
        }
    }

    public int GetCost() {
        int cost = 0;
        for (var e : Edges) {
            if (e.LeftNum != this.Num) {
                if (!e.LeftVertex.Group.equals(this.Group)) {
                    cost++;
                } else {
                    cost--;
                }
            } else {
                if (e.RightVertex.Group == null ? this.Group != null : !e.RightVertex.Group.equals(this.Group)) {
                    cost++;
                } else {
                    cost--;
                }
            }
        }
        return cost;
    }
}
