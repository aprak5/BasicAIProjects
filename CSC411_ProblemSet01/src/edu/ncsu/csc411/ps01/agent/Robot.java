/**The package this class is in.*/
package edu.ncsu.csc411.ps01.agent;

/**All necessary imports for our program.*/
import java.util.ArrayList;
import java.util.Map;

import edu.ncsu.csc411.ps01.environment.Action;
import edu.ncsu.csc411.ps01.environment.Environment;
import edu.ncsu.csc411.ps01.environment.Tile;
import edu.ncsu.csc411.ps01.environment.TileStatus;

/**
 * Represents a simple-reflex agent cleaning a particular room. The robot only
 * has one sensor - the ability to retrieve the the status of all its
 * neighboring tiles, including itself.
 * @author Amit Prakash (aprakas5) and Dr. Adam Gaweda (agaweda)
 */

public class Robot {
	/**The environment for our robot.*/
	private Environment env;
	/**The history of actions our robot has done.*/
	private ArrayList<Action> history = new ArrayList<Action>();
	/**Tiles that are clean*/
	private ArrayList<Tile> cleanTiles = new ArrayList<Tile>();
			

	/** Initializes a Robot on a specific tile in the environment. */
	public Robot(Environment env) {
		this.env = env;
	}

	/**
	 * Problem Set 01 - Modify the getAction method below in order to simulate the
	 * passage of a single time-step. At each time-step, the Robot decides whether
	 * to clean the current tile or move tiles.
	 * 
	 * Your task for this Problem Set is to modify the method below such that the
	 * Robot agent is able to clean at least 70% of the available tiles on a given
	 * Environment. 5 out of the 10 graded test cases, with explanations on how to
	 * create new Environments, are available under the test package.
	 * 
	 * This method should return a single Action from the Action class. -
	 * Action.CLEAN - Action.DO_NOTHING - Action.MOVE_UP - Action.MOVE_DOWN -
	 * Action.MOVE_LEFT - Action.MOVE_RIGHT
	 */

	/**
	 * Generates neighbors and cleans current tile, or goes to a dirty neighbor and cleans it 
	 * (adds corresponding action to history or cleanTiles), and if all neighbors are clean, backtrack.
	 * This allows the robot to go to every dirty tile, given the tile has at least one dirty neighbor, which is true for most maps.
	 */
	public Action getAction() {
		// This example code demonstrates the available methods and actions,
		// such as retrieving its senses (neighbor tiles), getting the status of
		// those tiles, and returning the different available Actions

		// env.getNeighboringTiles(this) will return a Map with key-value pairs
		// for each neighbor, using a String key for a Tile value
		Map<String, Tile> neighbors = env.getNeighborTiles(this);
		Tile self = neighbors.get("self");
		Tile above = neighbors.get("above"); // Either a Tile or null
		Tile below = neighbors.get("below"); // Either a Tile or null
		Tile left = neighbors.get("left"); // Either a Tile or null
		Tile right = neighbors.get("right"); // Either a Tile or null

		// getStatus will return TileStatus of the agent's current Position,
		// which can be either DIRTY, CLEAN, or IMPASSABLE
		// if current tile is dirty, clean it and add to cleanTiles
		if (self.getStatus() == TileStatus.DIRTY) {
			cleanTiles.add(self);
			return Action.CLEAN;
		}
//		// Currently the agent randomly decides an action... you can do better :D
//		int rand = (int) (Math.random() * 4);
//	    if (rand == 0) return Action.MOVE_UP;
//	    else if (rand == 1) return Action.MOVE_RIGHT;
//	    else if (rand == 2) return Action.MOVE_DOWN;
//	    else if (rand == 3) return Action.MOVE_LEFT;
//	    else return Action.DO_NOTHING;

//		System.out.println("above: " + above + " " + (above.getStatus() == TileStatus.DIRTY));
//		System.out.println("left: " + left + " " + (left.getStatus() == TileStatus.DIRTY));
//		System.out.println("below: " + below + " " + (below.getStatus() == TileStatus.DIRTY));
//		System.out.println("right: " + right + " " + (right.getStatus() == TileStatus.DIRTY));
		// Do null checks and if a neighbor is dirty go to the neighbor and add action to go to neighbor to history.
		if (below != null)
			if (below.getStatus() == TileStatus.DIRTY) {
				history.add(Action.MOVE_DOWN);
				return Action.MOVE_DOWN;
			}	
		if (right != null)
			if (right.getStatus() == TileStatus.DIRTY) {
				history.add(Action.MOVE_RIGHT);
				return Action.MOVE_RIGHT;
			}	
		if (left != null)
			if (left.getStatus() == TileStatus.DIRTY) {
				history.add(Action.MOVE_LEFT);
				return Action.MOVE_LEFT;
			}	
		if (above != null)
			if (above.getStatus() == TileStatus.DIRTY) {
				history.add(Action.MOVE_UP);
				return Action.MOVE_UP;
			}	
		// If the number of tiles is greater than the clean tiles backtrack
		if (env.getNumTiles() > cleanTiles.size()) {
			Action lastAction = history.remove(history.size() - 1);
			if(lastAction == Action.MOVE_DOWN && above != null)
				return Action.MOVE_UP;
			if(lastAction == Action.MOVE_RIGHT && left != null)
				return Action.MOVE_LEFT;
			if(lastAction == Action.MOVE_LEFT && right != null)
				return Action.MOVE_RIGHT;
			if(lastAction == Action.MOVE_UP && below != null)	
				return Action.MOVE_DOWN;
		}	
		// If nothing else, do nothing
		return Action.DO_NOTHING;
	}

	/**
	 * The string representation for our robot.
	 * @return String representation for our robot.
	 */
	@Override
	public String toString() {
		return "Robot [neighbors=" + env.getNeighborTiles(this) + "]";
	}

}