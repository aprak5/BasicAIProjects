package edu.ncsu.csc411.ps06.graph;

import java.util.ArrayList;

import edu.ncsu.csc411.ps06.util.EdgeType;

/**
 * Represents the graph structure of a Bayesian Network.
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class Graph<V extends Comparable<V>> {
 public ArrayList<Vertex<V>> vertices;
 public ArrayList<Edge<V>> edges;
 
 public Graph() {
     this.vertices = new ArrayList<Vertex<V>>();
     this.edges = new ArrayList<Edge<V>>();
 }
 
 public Edge<V> getEdge(Vertex<V> u, Vertex<V> v) {
     for(Edge<V> edge : this.edges) {
         if((edge.v1.getValue().equals(u.getValue()) && edge.v2.getValue().equals(v.getValue()))) {
             return edge;
         }
     }
     return null;
 }
 
 /**
  *  Don't need an insertVertex (unless we want one), because new vertices
  *  can be added through insertEdge if we detect a new vertex
  */
 public void insertEdge(Edge<V> edge) {
     // Help reduce amount of typing
     Vertex<V> v1 = edge.v1;
     Vertex<V> v2 = edge.v2;
     
     // Find the vertices of this edge on the graph
     if(!vertices.contains(v1))
         // If it wasn't already there, add it
         vertices.add(v1);
     v1 = vertices.get(vertices.indexOf(v1));
     
     // Repeat for the other vertex
     if(!vertices.contains(v2))
         vertices.add(v2);
     v2 = vertices.get(vertices.indexOf(v2));
     
     // See if the edge between these two vertices exists
     if (!edges.contains(edge)) {
         edges.add(edge);
         EdgeType newEdgeType = EdgeType.FROM;
         if (edge.getEdgeType() == EdgeType.FROM)
        	 newEdgeType = EdgeType.TO;
         Edge<V> swapEdge = new Edge<V>(v2, v1, newEdgeType);
         edges.add(swapEdge);
     }
         
     // Finally add v1 and v2 to each other neighbors if
     // they aren't already neighbors; note, a graph could
     // have multiple edges between two nodes. Nothing against
     // the rules
     if(!v1.neighbors.contains(v2))
         v1.neighbors.add(v2);
     if(!v2.neighbors.contains(v1))
         v2.neighbors.add(v1);
 }
 
 public String toString() {
	 StringBuffer sb = new StringBuffer();
	 for(int i = 0; i < this.vertices.size(); i++) {
         Vertex<V> v = this.vertices.get(i);
         sb.append(v.getValue() + " -> ");
         for(int j = 0; j < v.neighbors.size(); j++) {
        	 sb.append(v.neighbors.get(j).getValue() + " -> ");
         }
         sb.append("null");
     }
	 return sb.toString();
 }
}

