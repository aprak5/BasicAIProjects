/**
 * @file Robot.java
 * @author Amit Prakash (aprakas5) and Dr. Adam Gaweda (agaweda)
 * This file contains the agent with our A* Search implementation in the Environment given (see Environment.java).
 */

//Package declaration and imports
package edu.ncsu.csc411.ps02.agent;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;

import edu.ncsu.csc411.ps02.environment.Tile;
import edu.ncsu.csc411.ps02.environment.TileStatus;
import edu.ncsu.csc411.ps02.environment.Action;
import edu.ncsu.csc411.ps02.environment.Environment;
import edu.ncsu.csc411.ps02.environment.Position;

/**
 * Represents an intelligent agent moving through a particular room. The robot
 * only has two sensors - the ability to retrieve the the status of all its
 * neighboring tiles, including itself, and the ability to retrieve to location
 * of the TARGET tile.
 * 
 * Your task is to modify the getAction method below so that it reaches TARGET
 * with a minimal number of steps.
 */

public class Robot {
	/** This is the environment of this robot. */
	private Environment env;
	/**
	 * This is the list of positions for the shortest path for this robot from start
	 * to target position.
	 */
	static List<Position> positionOrder = new ArrayList<Position>();
	/**
	 * This is the target position for this robot. This is global mainly for our
	 * heuristic calculations.
	 */
	static Position targetPos;

	/**
	 * Initializes a Robot on a specific tile in the environment.
	 * 
	 * @param env This is the environment of the robot given.
	 */
	public Robot(Environment env) {
		this.env = env;
	}

	/**
	 * Problem Set 02 - Modify the getAction method below in order to simulate the
	 * passage of a single time-step. At each time-step, the Robot decides which
	 * tile to move to.
	 * 
	 * Your task for this Problem Set is to modify the method below such that the
	 * Robot agent is able to reach the TARGET tile on a given Environment. 5 out of
	 * the 10 graded test cases, with explanations on how to create new
	 * Environments, are available under the test package.
	 * 
	 * This method should return a single Action from the Action class. -
	 * Action.DO_NOTHING - Action.MOVE_UP - Action.MOVE_DOWN - Action.MOVE_LEFT -
	 * Action.MOVE_RIGHT
	 */

	/**
	 * This method provides and implementation for this Robot to run(). An action is
	 * returned to find the shortest path to the target Position. This method
	 * creates PositionNodes for each Position in Environment env and graphs them
	 * together based on looking at each Position's neighbors. If the neighbors
	 * exist and are passable, they are graphed to the current PositionNode,
	 * otherwise they are not. Finally, we use aStar() to populate the targetNode
	 * with a good path (via the PositionNode's parent references). We then use
	 * makePositionList() to get an ArrayList<Position> for all Positions in the
	 * path to the target position and use it every time to decide on what Action to
	 * return. The aStar() search is done once to eliminate overhead on the other
	 * passes through this method, done simply by a null check on the final list
	 * returned/populated (positionOrder).
	 * 
	 * @return Action This the Action returned to guide this Robot to the target
	 *         (mainly via aStar, makePositionList(), and neighbor conditionals).
	 */
	public Action getAction() {
		// The Environment has a getTarget() method which will return
		// the Position of the Target Position.
		targetPos = env.getTarget();

		// The Environment has a getRobotPosition() method which will return
		// the Position of the Robot's Position.
		Position selfPos = env.getRobotPosition(this);

		// For this problem set, the Environment class allows for complete
		// observability. Instead you are now able to find all neighbor
		// positions to any given Position object
		Map<String, Position> neighbors = env.getNeighborPositions(selfPos);
		Position abovePos = neighbors.get("above"); // Either a Tile or null
		Position belowPos = neighbors.get("below"); // Either a Tile or null
		Position leftPos = neighbors.get("left"); // Either a Tile or null
		Position rightPos = neighbors.get("right"); // Either a Tile or null

		// Then you are able to get their tile using the getTiles method
		Map<Position, Tile> positions = env.getTiles();

		// Create a hashmap to map each PositionNode to a Position.
		Map<Position, PositionNode> pNodes = new HashMap<Position, PositionNode>();

		// Create/Initialize every entry for every key in the map created above.
		for (Position p : positions.keySet()) {
			PositionNode tempNode = new PositionNode(p);
			pNodes.put(p, tempNode);
		}

		// Graph each node in the hash map created above, so each neighbor is connected
		// properly.
		for (Position p : pNodes.keySet()) {
			// Get all neighbors of this Position
			Map<String, Position> neighborsL = env.getNeighborPositions(p);

			// Create variables for/initialize all neighbors
			Position abovePosL = neighborsL.get("above"); // Either a Tile or null
			Position belowPosL = neighborsL.get("below"); // Either a Tile or null
			Position leftPosL = neighborsL.get("left"); // Either a Tile or null
			Position rightPosL = neighborsL.get("right"); // Either a Tile or null

			// If any neighbor is null or impassable don't graph it to this PositionNode
			if (abovePosL != null && positions.get(abovePosL).getStatus() != TileStatus.IMPASSABLE)
				pNodes.get(p).addBranch(1, pNodes.get(abovePosL));
			if (belowPosL != null && positions.get(belowPosL).getStatus() != TileStatus.IMPASSABLE)
				pNodes.get(p).addBranch(1, pNodes.get(belowPosL));
			if (leftPosL != null && positions.get(leftPosL).getStatus() != TileStatus.IMPASSABLE)
				pNodes.get(p).addBranch(1, pNodes.get(leftPosL));
			if (rightPosL != null && positions.get(rightPosL).getStatus() != TileStatus.IMPASSABLE)
				pNodes.get(p).addBranch(1, pNodes.get(rightPosL));
		}

		// If we are already at the target position, do nothing.
		if (selfPos.equals(targetPos)) {
			return Action.DO_NOTHING;
		}

		// If we have not calculated the shortest path via aStar(), do so, otherwise if
		// we have at least once, don't recalculate it.
		if (positionOrder.isEmpty()) {
			PositionNode pn = aStar(pNodes.get(selfPos), pNodes.get(targetPos));
			makePositionList(pn);
		}

		// Remove a position from positionOrder until we reach the target
		Position nextPos = positionOrder.remove(0);

		// Decide how to move by looking at the next position and see which neighbor it
		// is. If all else fails, do nothing.
		if (nextPos == abovePos)
			return Action.MOVE_UP;
		else if (nextPos == belowPos)
			return Action.MOVE_DOWN;
		else if (nextPos == leftPos)
			return Action.MOVE_LEFT;
		else if (nextPos == rightPos)
			return Action.MOVE_RIGHT;
		return Action.DO_NOTHING;
	}

	/**
	 * Searches the shortest path between the start PositionNode and the target
	 * PositionNode via the A* algorithm. Return the target PositionNode with a path
	 * to the start PositionNode (via parent references in the PositionNode object)
	 * if successful. If it fails, it returns null.
	 * 
	 * @param start  The starting PositionNode to look at.
	 * @param target The target PositionNode to find a path to.
	 * @return The target PositionNode with a path to the start PositionNode (via
	 *         parent references in the PositionNode object) if successful,
	 *         otherwise null.
	 */
	public static PositionNode aStar(PositionNode start, PositionNode target) {
		// Make two priority queues one open and one closed
		PriorityQueue<PositionNode> closedList = new PriorityQueue<>();
		PriorityQueue<PositionNode> openList = new PriorityQueue<>();

		// Calculate the starting f, g, h values and add to the openList.
		start.f = (start.g + start.h);
		openList.add(start);

		// While the open list is not empty check if the first node is the target
		while (!openList.isEmpty()) {
			PositionNode p = openList.peek();
			if (p == target) {
				return p;
			}

			// Otherwise, for each neighbor (edge) in the node
			for (PositionNode.Edge edge : p.neighbors) {

				// Save the attached neighboring PositionNode and update the edge weight for
				// this PositionNode (p).
				PositionNode q = edge.nNode;
				double totalWeight = p.g + edge.weight;

				// If the neighboring PositionNode is not in both the openList and the
				// closedList
				if (!openList.contains(q) && !closedList.contains(q)) {
					// Set the parent of the neighboring PositionNode to this PositionNode, and
					// update all its values (f, g, h)/add to the openList.
					q.parent = p;
					q.g = totalWeight;
					q.f = (q.g + q.h);
					openList.add(q);
				} else {
					// Otherwise, if the total weight of this PositionNode and the neighboring Edge
					// for the neighboring PositionNode is less than the g value for the neighboring
					// PositionNode, update all its values (f, g, h), and if it is in the closedList
					// remove it and add it to the openList;
					if (totalWeight < q.g) {
						q.parent = p;
						q.g = totalWeight;
						q.f = (q.g + q.h);

						if (closedList.contains(q)) {
							closedList.remove(q);
							openList.add(q);
						}
					}
				}
			}

			// Remove the current PositionNode from the openList and add it to the
			// closedList, when it is 'seen'.
			openList.remove(p);
			closedList.add(p);
		}
		// If all else fails, return null.
		return null;
	}

	/**
	 * Populates our ArrayList<Position> positionOrder with the references in target
	 * PositionNode in the order from starting Position to target Position.
	 * 
	 * @param target The target PositionNode with a path to the start PositionNode
	 *               (via parent references in the PositionNode object) if
	 *               successful, otherwise null.
	 */
	public static void makePositionList(PositionNode target) {
		// Create a copy of the parameter PositionNode target
		PositionNode targetPNode = target;

		// Check if null, if so, return (void)
		if (targetPNode == null)
			return;

		// Make a new List<Position> positions
		List<Position> positions = new ArrayList<>();

		// Reference the parent PositionNode in targetPNode back to PositionNode start,
		// and add the path (PositionNodes along the way) to positions.
		while (targetPNode.parent != null) {
			positions.add(targetPNode.data);
			targetPNode = targetPNode.parent;
		}
		// Add the final PositionNode (start)
		positions.add(targetPNode.data);
		// Flip the order, so it is start to target instead of target to start.
		Collections.reverse(positions);
		// Save the copy in positionOrder.
		positionOrder = positions;
	}

	/**
	 * @author Amit Prakash This PositionNode is used in aStar() to store Positions
	 *         and graph them amongst each other via Edges (Edge inner class below).
	 */
	class PositionNode implements Comparable<PositionNode> {
		/** Previous PositionNode in the path */
		public PositionNode parent = null;
		/** Position associated with this PositionNode */
		public Position data = null;

		/**
		 * All neighbors (with Edges) in this PositionNode (done via PositionNode/Edge
		 * graphing)
		 */
		public List<Edge> neighbors;

		/**
		 * This is the total function used to decide to move (distance traveled (g) and
		 * estimated distance to go (h))
		 */
		public double f = 0;
		/** This is the function used to record the distance traveled. */
		public double g = 0;
		/** This is the function used to estimate the distance to travel. */
		public double h = 0;

		/***
		 * This is the constructor for the PositionNode. Sets/Initializes the data, h,
		 * and neighbors fields for this PositionNode (mostly) according to p.
		 * 
		 * @param p The Position to base this PositionNode off of.
		 */
		public PositionNode(Position p) {
			this.data = p;
			this.h = this.calculateHeuristic();
			this.neighbors = new ArrayList<>();
		}

		/**
		 * This calculates the h value for this PositionNode based on the Manhattan
		 * distance heuristic.
		 * 
		 * @return The h value for this PositionNode based on the Manhattan distance
		 *         heuristic.
		 */
		public int calculateHeuristic() {
			return (Math.abs(this.data.getCol() - targetPos.getCol())
					+ Math.abs(this.data.getRow() - targetPos.getRow()));
		}

		/**
		 * Compares two PositionNodes and returns a value based on the two f values of
		 * the PositionNodes.
		 * 
		 * @param p The PositionNode to compare this PositionNode with.
		 * @return The comparison (from Double class) of the two f values for p and this
		 *         PositionNode.
		 */
		@Override
		public int compareTo(PositionNode p) {
			return Double.compare(this.f, p.f);
		}

		/**
		 * This adds an Edge with a given weight and PositionNode to the neighbors list,
		 * so when aStar() looks at the neighbors for this PositionNode it can correctly
		 * choose the best neighbor to go to.
		 * 
		 * @param weight The weight for the Edge to add for this neighbor.
		 * @param nNode  The neighboring PositionNode.
		 */
		public void addBranch(int weight, PositionNode nNode) {
			Edge newEdge = new Edge(weight, nNode);
			neighbors.add(newEdge);
		}

		/**
		 * 
		 * @author Amit Prakash This class helps graph the PositionNodes together, so
		 *         the aStar() method can decide which PositionNode it can choose next.
		 */
		class Edge {
			/** The weight associated with this Edge. */
			public int weight;
			/** The neighboring PositionNode associated with this Edge. */
			public PositionNode nNode;

			/**
			 * This builds an edge with a given weight from a given PositionNode.
			 * 
			 * @param weight The given weight for the edge.
			 * @param nNode  The given neighboring PositionNode for the edge.
			 */
			public Edge(int weight, PositionNode nNode) {
				this.weight = weight;
				this.nNode = nNode;
			}
		}
	}
}
