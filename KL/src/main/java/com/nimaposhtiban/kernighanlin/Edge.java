/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nimaposhtiban.kernighanlin;

import java.util.Objects;

/**
 *
 * @author Nima
 */
public class Edge {

    public int LeftNum;
    public int RightNum;

    public Vertex LeftVertex;

    public Vertex RightVertex;

    public Edge(int left, int right) {
        LeftNum = left;
        RightNum = right;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 31 * hash + this.LeftNum;
        hash = 31 * hash + this.RightNum;
        hash = 31 * hash + Objects.hashCode(this.LeftVertex);
        hash = 31 * hash + Objects.hashCode(this.RightVertex);
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
        final Edge other = (Edge) obj;
        if (this.LeftNum != other.LeftNum) {
            return false;
        }
        if (this.RightNum != other.RightNum) {
            return false;
        }
        if (!Objects.equals(this.LeftVertex, other.LeftVertex)) {
            return false;
        }
        return Objects.equals(this.RightVertex, other.RightVertex);
    }

}
