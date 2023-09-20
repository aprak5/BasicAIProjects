package edu.ncsu.csc411.ps06.dseperation;

import java.util.ArrayList;

import edu.ncsu.csc411.ps06.graph.Graph;
import edu.ncsu.csc411.ps06.graph.Vertex;
import edu.ncsu.csc411.ps06.util.EdgeType;

public class DSeparation<V extends Comparable<V>> {
	public Graph<V> graph;

	public DSeparation(Graph<V> graph) {
		this.graph = graph;
	}
	
	/**
	 * Problem Set 06 - For this Problem Set you will be implementing the D-Separation
	 * algorithm discussed in class. The dSeparation method below provides you with a path
	 * between two vertices as an ArrayList and the observed evidence, also as an ArrayList.
	 * Given the path and evidence, you task it to re-implement the D-Separation considerations
	 * and return either TRUE or FALSE, indicating whether the first vertex and last vertex in
	 * the path are independent from each other. Recall, for two nodes to be independent, 
	 * the path needs to be considered INACTIVE. ACTIVE paths mean that the nodes may have
	 * influence over each other.
	 * 
	 * For this problem set, you will need to convert the path into a set of triples and evaluate
	 * each triple based on the rules provided in class. Assume that the PATH variable only represents
	 * a single potential path between two nodes. For a more robust D-Separation implementation, you
	 * would also need to consider all possible paths between two nodes.
	 */
	
	/**
	 * This method relies on isInactive() to set the boolean isInactive which is returned (or false otherwise).
	 * If the path has exactly 3 vertices, call isInactive(path, evidence) and return it.
	 * If the path has more than 3 vertices, call isInactive(triple, evidence) for each triple in the path.
	 * Start with the first 3 vertices in triple, then shift 1 vertex over until the last vertex is checked.
	 * If one path is seen as inactive, then the rest of the paths are not checked and true is returned (true get priority over false).
	 * If no cases are fulfilled (less than 3 vertices), return false (as a fail-safe).
	 * @param path The single path to be checked.
	 * @param evidence The evidence base for the graph.
	 * @return Whether or not the paths are inactive (or false if less than 3 vertices in the path).
	 */
	public boolean dSeparation(ArrayList<Vertex<V>> path, ArrayList<Vertex<V>> evidence) {
		ArrayList<Vertex<V>> triple = new ArrayList<Vertex<V>>();
		boolean isInactive = true;

		if(path.size() == 3) {
			isInactive = isInactive(path, evidence);
			return isInactive;
		}
		else if(path.size() > 3) {
			for(int i = 2; i < path.size(); i++) {
					triple.add(0, path.get(i - 2));
					triple.add(1, path.get(i - 1));
					triple.add(2, path.get(i));
					isInactive = isInactive(triple, evidence);
					if(isInactive)
						break;
					triple.remove(triple.get(2));
					triple.remove(triple.get(1));
					triple.remove(triple.get(0));;
			}
			return isInactive;
		}
		else
			return false;
	}
	
	/**
	 * This looks at the cases for Inactive triples returns true if matched, otherwise false.
	 * Cases checked in the if-statements in order:
	 * 1. 0 --> 1 (in evidence) --> 2 and 0 <-- 1 (in evidence) <-- 2
	 * 2. 0 <-- 1 (in evidence) --> 2
	 * 3. 0 --> 1 (not in evidence) <-- 2 and 0 --> 1 <-- 2
	 *                                              |        
	 *                                              | 
	 *                                              X (not in evidence)
	 * @param triple The triple of vertices checked for against the inactive triples here.
	 * @param evidence The evidence base for the graph.
	 * @return True if inactive otherwise false.
	 */
	private boolean isInactive(ArrayList<Vertex<V>> triple, ArrayList<Vertex<V>> evidence) {
		if(graph.getEdge(triple.get(0), triple.get(1)) != null && 
				evidence.contains(triple.get(1)) && 
				graph.getEdge(triple.get(1), triple.get(2)) != null && 
				((graph.getEdge(triple.get(0), triple.get(1)).getEdgeType() == EdgeType.TO && 
				graph.getEdge(triple.get(1), triple.get(2)).getEdgeType() == EdgeType.TO) || 
				(graph.getEdge(triple.get(0), triple.get(1)).getEdgeType() == EdgeType.FROM && 
				graph.getEdge(triple.get(1), triple.get(2)).getEdgeType() == EdgeType.FROM))) 
			return true;
		if(graph.getEdge(triple.get(1), triple.get(0)) != null && 
				evidence.contains(triple.get(1)) && 
				graph.getEdge(triple.get(1), triple.get(2)) != null && 
				graph.getEdge(triple.get(1), triple.get(0)).getEdgeType() == EdgeType.TO && 
				graph.getEdge(triple.get(1), triple.get(2)).getEdgeType() == EdgeType.TO) 
			return true;
		if(graph.getEdge(triple.get(0), triple.get(1)) != null && 
				evidence.size() == 0 && 
				graph.getEdge(triple.get(2), triple.get(1)) != null && 
				graph.getEdge(triple.get(0), triple.get(1)).getEdgeType() == EdgeType.TO && 
				graph.getEdge(triple.get(2), triple.get(1)).getEdgeType() == EdgeType.TO) { 
			return true;
		}
		return false;
	}
}