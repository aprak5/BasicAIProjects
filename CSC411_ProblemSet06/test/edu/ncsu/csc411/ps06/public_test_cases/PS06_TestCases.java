package edu.ncsu.csc411.ps06.public_test_cases;

import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;

import edu.ncsu.csc411.ps06.dseperation.DSeparation;
import edu.ncsu.csc411.ps06.graph.Edge;
import edu.ncsu.csc411.ps06.graph.Graph;
import edu.ncsu.csc411.ps06.graph.Vertex;
import edu.ncsu.csc411.ps06.util.EdgeType;

class PS06_TestCases {
	// Graph borrowed from https://examples.bayesserver.com/d-separation
	Graph<String> graph;
	Vertex<String> VtA = new Vertex<String>("Visit To Asia");
	Vertex<String> hTB = new Vertex<String>("Has Tuberculosis");
	Vertex<String> TBoC = new Vertex<String>("Tuberculosis Or Cancer");
	Vertex<String> S = new Vertex<String>("Smoking");
	Vertex<String> hLC = new Vertex<String>("Has Lung Cancer");
	Vertex<String> hB = new Vertex<String>("Has Bronchitis");
	Vertex<String> XR = new Vertex<String>("XRay Result");
	Vertex<String> D = new Vertex<String>("Dyspnea");
	
	@Test
	public void testCase01() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(VtA);
		path.add(hTB);
		path.add(TBoC);
		path.add(hLC);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		
		boolean result = submission.dSeparation(path, evidence);
		assertTrue(result);
	}
	
	@Test
	public void testCase02() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(VtA);
		path.add(hTB);
		path.add(TBoC);
		path.add(hLC);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		evidence.add(TBoC);
		
		boolean result = submission.dSeparation(path, evidence);
		assertFalse(result);
	}
	
	@Test
	public void testCase03() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(VtA);
		path.add(hTB);
		path.add(TBoC);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		
		boolean result = submission.dSeparation(path, evidence);
		assertFalse(result);
	}
	
	@Test
	public void testCase04() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(VtA);
		path.add(hTB);
		path.add(TBoC);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		evidence.add(hTB);
		
		boolean result = submission.dSeparation(path, evidence);
		assertTrue(result);
	}
	
	@Test
	public void testCase05() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(hB);
		path.add(S);
		path.add(hLC);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		
		boolean result = submission.dSeparation(path, evidence);
		assertFalse(result);
	}
	
	@Test
	public void testCase06() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(hB);
		path.add(S);
		path.add(hLC);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		evidence.add(S);
		
		boolean result = submission.dSeparation(path, evidence);
		assertTrue(result);
	}
	
	@Test
	public void testCase07() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(D);
		path.add(TBoC);
		path.add(hLC);
		path.add(S);
		path.add(hB);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		
		boolean result = submission.dSeparation(path, evidence);
		assertFalse(result);
	}
	
	@Test
	public void testCase08() {
		graph = new Graph<String>();
		graph.insertEdge(new Edge<String>(VtA, hTB, EdgeType.TO)); // VtA -> hTB
		graph.insertEdge(new Edge<String>(hTB, TBoC, EdgeType.TO)); // hTB -> TBoC
		graph.insertEdge(new Edge<String>(S, hLC, EdgeType.TO)); // S -> hLC
		graph.insertEdge(new Edge<String>(S, hB, EdgeType.TO)); // S -> hB
		graph.insertEdge(new Edge<String>(TBoC, XR, EdgeType.TO)); // TBoC -> XR
		graph.insertEdge(new Edge<String>(TBoC, D, EdgeType.TO)); // TBoC -> D
		graph.insertEdge(new Edge<String>(hB, D, EdgeType.TO)); // hB -> D
		graph.insertEdge(new Edge<String>(hLC, TBoC, EdgeType.TO)); // hLC -> TBoC
		
		DSeparation<String> submission = new DSeparation<String>(graph);
		
		ArrayList<Vertex<String>> path = new ArrayList<Vertex<String>>();
		path.add(D);
		path.add(TBoC);
		path.add(hLC);
		path.add(S);
		path.add(hB);
		
		ArrayList<Vertex<String>> evidence = new ArrayList<Vertex<String>>();
		evidence.add(TBoC);
		
		boolean result = submission.dSeparation(path, evidence);
		assertTrue(result);
	}
}
