package edu.ncsu.csc411.ps06.graph;

import edu.ncsu.csc411.ps06.util.EdgeType;

/**
 * Represents an Edge from the Bayesian Network. Each edge represents the influence
 * between two particular vertices. For example if an edge represents V1 -> V2, then
 * V1 has direct influence over V2. This edge would be represented by V1 having EdgeType.TO
 * to V2, and V2 would have EdgeType.FROM to V1. 
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class Edge<V extends Comparable<V>> implements Comparable<Edge<V>> {
 public EdgeType edgeType;
 public Vertex<V> v1;
 public Vertex<V> v2;

 public Edge(Vertex<V> v1, Vertex<V> v2, EdgeType edgeType) {
     this.v1 = v1;
     this.v2 = v2;
     this.edgeType = edgeType;
 }
 public Edge(V v1, V v2, EdgeType edgeType) {
     this.v1 = new Vertex<V>(v1);
     this.v2 = new Vertex<V>(v2);
     this.edgeType = edgeType;
 }
 
 public Vertex<V> getV1() {
	 return this.v1;
 }
 
 public Vertex<V> getV2() {
	 return this.v2;
 }
 
 public EdgeType getEdgeType() {
	 return this.edgeType;
 }

 @Override
 public int compareTo(Edge<V> o) {
     return edgeType.compareTo(o.edgeType);
 }
 
 @Override
 @SuppressWarnings("unchecked")
 public boolean equals(Object o) {
     // Ensuring type handling
     if (o != null && o instanceof Edge) {
         boolean v1Compare = v1.getValue().compareTo(((Edge<V>) o).v1.getValue()) == 0;
         boolean v2Compare = v2.getValue().compareTo(((Edge<V>) o).v2.getValue()) == 0;
         boolean edgeTypeCompare = this.edgeType.compareTo(((Edge<V>) o).edgeType) == 0;
          
         return v1Compare && v2Compare && edgeTypeCompare;
     }
     return false;
 }

 @Override
 public String toString() {
     return "Edge [edgeType=" + this.edgeType + ", v1=" + v1 + ", v2=" + v2 + "]";
 }
}