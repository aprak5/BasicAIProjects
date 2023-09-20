package edu.ncsu.csc411.ps06.util;

import edu.ncsu.csc411.ps06.graph.Edge;
import edu.ncsu.csc411.ps06.graph.Graph;
import edu.ncsu.csc411.ps06.graph.Vertex;

/**
 * A simple demo to show each vertex relationship from the test cases.
 * Feel free to modify if you'd like to test your implementation.
 * @author Adam Gaweda
 */
public class GraphDemo {
	// Graph borrowed from https://examples.bayesserver.com/d-separation
    public static void main(String[] args) {
        Graph<String> graph = new Graph<String>();
        
        Edge<String> edge = new Edge<String>("Visit Asia", "Has Tuberculosis", EdgeType.TO);
        graph.insertEdge(edge);
        edge = new Edge<String>("Has Tuberculosis", "Tuberculosis Or Cancer", EdgeType.TO);
        graph.insertEdge(edge);
        edge = new Edge<String>("Smoker", "Has LungCancer", EdgeType.TO);
        graph.insertEdge(edge);
        edge = new Edge<String>("Smoker", "Has Bronchitis", EdgeType.TO);
        graph.insertEdge(edge);
        edge = new Edge<String>("Has Lung Cancer", "Tuberculosis Or Cancer", EdgeType.TO);
        graph.insertEdge(edge);
        edge = new Edge<String>("Tuberculosis Or Cancer", "Xray Result", EdgeType.TO);
        graph.insertEdge(edge);
        edge = new Edge<String>("Tuberculosis Or Cancer", "Dyspnea", EdgeType.TO);
        graph.insertEdge(edge);
        edge = new Edge<String>("Has Bronchitis", "Dyspnea", EdgeType.TO);
        graph.insertEdge(edge);
              
        // Feel free to utilize the Graph object's getEdge and getEdgeType for this PS.
        for(int i = 0; i < graph.edges.size(); i++) {
            Edge<String> e = graph.edges.get(i);
            Vertex<String> v1 = e.getV1();
            Vertex<String> v2 = e.getV2();
            EdgeType et = e.getEdgeType();
            String arrow = " -> ";
            if (et == EdgeType.FROM) {
            	arrow = " <- ";
            }
            System.out.println(v1.getValue() + arrow + v2.getValue());
        }
    }
}