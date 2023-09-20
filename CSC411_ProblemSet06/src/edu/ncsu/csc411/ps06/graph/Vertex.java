package edu.ncsu.csc411.ps06.graph;

import java.util.ArrayList;

/**
 * Represents a Vertex from the Bayesian Network. Each vertex can be considered as
 * a particular variable used during the analysis. For the sake of this exercise, we're
 * only storing a String in each vertex, however expanding on a Bayesian Network would
 * include truth tables to represent the probabilties of the vertex (and its parents).
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class Vertex<E extends Comparable<E>> implements Comparable<Vertex<E>> {
 private E value;
 public ArrayList<Vertex<E>> neighbors;
 
 public Vertex(E value) {
     this.value = value;
     this.neighbors = new ArrayList<Vertex<E>>();
 }
 
 public E getValue() {
	 return this.value;
 }

 @Override
 public int compareTo(Vertex<E> o) {
     return value.compareTo(o.value);
 }
 
 @Override
 @SuppressWarnings("unchecked")
 public boolean equals(Object o) {
     // Ensuring type handling
     if (o != null && o instanceof Vertex) {
         // A lot of steps in 1 line; convert Oject to Vertex<E>, extract value,
         // compare its value to this vertex's value and see if they are equal.
         return this.value.compareTo(((Vertex<E>) o).value) == 0;
     }
     return false;
 }

 @Override
 public String toString() {
     return "Vertex [value=" + value + "]";
 }
}
