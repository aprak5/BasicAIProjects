package edu.ncsu.csc411.ps01.environment;

import edu.ncsu.csc411.ps01.agent.Robot;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * The world in which this simulation exists. As a base
 * world, this produces a 10x10 room of DIRTY tiles. Environments
 * can also be created using the (String[] map) constructor to produce
 * different environments based on the contents of the String array.
 * 
 * This object will allow the agent to explore the world and is how
 * the agent will retrieve information about neighboring tiles.
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class Environment {
	private Position[][] positions;
	private Map<Position, Tile> tiles;
	private ArrayList<Robot> robots;
	private Map<Robot, Position> robotPositions;
	private int rows, cols;
	private int numRobots;
	
	public Environment() { this(10,10); }
	public Environment(int rows, int columns) {
		this.numRobots = 1;
		this.rows = rows;
		this.cols = columns;
		this.positions = new Position[this.rows][this.cols];
		this.tiles = new HashMap<Position, Tile>();
		this.robots = new ArrayList<Robot>();
		this.robotPositions = new HashMap<Robot, Position>();
		for(int row = 0; row < rows; row++) {
			for (int col = 0; col < cols; col++) {
				// Create a new position at (row, col)
				Position p = new Position(row, col);
				this.positions[row][col] = p;
				
				// And set it to DIRTY
				Tile t = new Tile(TileStatus.DIRTY);
				// Set the newly made dirty tile t to position p
				this.tiles.put(positions[row][col], t);
			}
		}
		
		// Establish neighbors for each Position
		for(int row = 0; row < rows; row++) {
			for (int col = 0; col < cols; col++) {
				if (row > 0) {
					this.positions[row][col].setAbove(positions[row-1][col]);
				}
				if (row < this.rows-1) {
					this.positions[row][col].setBelow(positions[row+1][col]);
				}
				if (col > 0) {
					this.positions[row][col].setLeft(positions[row][col-1]);
				}
				if (col < this.cols-1) {
					this.positions[row][col].setRight(positions[row][col+1]);
				}
			}
		}
		
		// Create robots
		for(int i = 0; i < numRobots; i++) {
			Robot robot = new Robot(this);
			addRobot(robot, getStartingPosition());
		}
	}
	
	public Environment(String[] map) {
		this(map.length, map[0].length());
		for (int row = 0; row < map.length; row++) {
			for (int col = 0; col < map[row].length(); col++) {
				char tile = map[row].charAt(col);
				Position p = this.positions[row][col];
				switch(tile) {
					case 'D': tiles.put(p, new Tile(TileStatus.DIRTY)); break;
					case 'C': tiles.put(p, new Tile(TileStatus.CLEAN)); break;
					case 'W': tiles.put(p, new Tile(TileStatus.IMPASSABLE)); break;
				}
			}
		}
	}
	
	/* Traditional Getters */
	protected TileStatus getTileStatus(Position p) { return tiles.get(p).getStatus(); }
	public Position getRobotPosition(Robot robot) { return this.robotPositions.get(robot); }
	public Map<Position, Tile> getTiles() { return tiles; }
	public ArrayList<Robot> getRobots() { return this.robots; }
	public int getRows() { return this.rows; }
	public int getCols() { return this.cols; }
	
	protected void addRobot(Robot robot, Position p) {
		this.robotPositions.put(robot, p);
		this.robots.add(robot);
	}
	
	/*
	 * Serves are the method for agents to 'sense' the Environment.
	 * Returns a Map/Dictionary containing the tiles to the 
	 * right, left, above, and below the Robot. If a particular
	 * location is invalid (outside the environment), it will not
	 * create that key-value pair.
	 */
	public Map<String, Tile> getNeighborTiles(Robot robot) {
		Map<String, Tile> neighbors = new HashMap<String, Tile>();
		
		Position robotPos = getRobotPosition(robot);
		neighbors.put("self", tiles.get(robotPos));
		if(robotPos.getAbove() != null) {
			neighbors.put("above", tiles.get(robotPos.getAbove()));
		}
		if(robotPos.getBelow() != null) {
			neighbors.put("below", tiles.get(robotPos.getBelow()));
		}
		if(robotPos.getLeft() != null) {
			neighbors.put("left", tiles.get(robotPos.getLeft()));
		}
		if(robotPos.getRight() != null) {
			neighbors.put("right", tiles.get(robotPos.getRight()));
		}
		
		return neighbors;
	}
	
	/* Cleans the tile at coordinate [x][y] */
	protected void cleanTile(int row, int col) {
		Position p = positions[row][col];
		this.tiles.get(p).cleanTile();		
	}
	
	/* Counts number of cleaned tiles */
	public int getNumCleanedTiles() {
        int count = 0;
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
            	Position p = positions[row][col];
                if (this.tiles.get(p).getStatus() == TileStatus.CLEAN)
                    count++;
            }
        }
        return count;
    }
	
	/* Counts number of tiles that are not walls */
	public int getNumTiles() {
		int count = 0;
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
            	Position p = positions[row][col];
                if (this.tiles.get(p).getStatus() != TileStatus.IMPASSABLE)
                    count++;
            }
        }
        return count;
    }

	/* Determines if a particular [row][col] coordinate is within
	 * the boundaries of the environment. This is a rudimentary
	 * "collision detection" to ensure the agent does not walk
	 * outside the world (or through walls).
	 */
	protected boolean validPos(int row, int col) {
		try {
			Position p = positions[row][col];
		    return row >= 0 && row < this.rows && col >= 0 && col < this.cols &&
		    		this.tiles.get(p).getStatus() != TileStatus.IMPASSABLE;
		} catch (ArrayIndexOutOfBoundsException e) {
			return false;
		}
	}
	protected Position getStartingPosition() {
		return this.positions[0][0];
	}
	protected void updateRobotPos(Robot robot, int row, int col) {
		Position p = positions[row][col];
		robotPositions.put(robot, p);
	}
	
	// Gets the new state of the world after robot actions
	public void updateEnvironment() {
		for(Robot robot : robots) {
			Action action = robot.getAction();
			Position robotPos = getRobotPosition(robot);
			int row = robotPos.getRow();
			int col = robotPos.getCol();
			switch(action) {
                case CLEAN:
                    cleanTile(row, col);
                    break;
                case MOVE_DOWN:
                    if (validPos(row+1, col))
                        updateRobotPos(robot, row+1, col);
                    break;
                case MOVE_LEFT:
                    if (validPos(row, col-1))
                    	updateRobotPos(robot, row, col-1);
                    break;
                case MOVE_RIGHT:
                    if (validPos(row, col+1))
                    	updateRobotPos(robot, row, col+1);
                    break;
                case MOVE_UP:
                    if (validPos(row-1, col))
                    	updateRobotPos(robot, row-1, col);
                    break;
                case DO_NOTHING: // pass to default
                default:
                    break;
			}
		}
	}
	
	// Get the percentage of tiles that are clean
	public double getPerformanceMeasure() {
		int cleanTiles = getNumCleanedTiles();
		int totalTiles = getNumTiles();
        return (1.0*cleanTiles)/totalTiles;
	}
	
	// Print the number of tiles in the environment, the percentage of tiles cleaned
	public void printPerformanceMeasure() {
		int cleanTiles = getNumCleanedTiles();
		int totalTiles = getNumTiles();
		System.out.println("Simulation Complete");
        System.out.println("Total Tiles:\t" + totalTiles);
        System.out.println("Clean Tiles:\t" + cleanTiles);
        System.out.printf("%% Cleaned:\t%.2f%%\n", (100.0 * getPerformanceMeasure()));
	}
}
