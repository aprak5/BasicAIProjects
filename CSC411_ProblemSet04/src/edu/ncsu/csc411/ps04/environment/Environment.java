package edu.ncsu.csc411.ps04.environment;

import java.util.ArrayList;
import java.util.Arrays;

import edu.ncsu.csc411.ps04.agent.Robot;

/**
 * This produces a 6x7 connect four board.
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class Environment {
	private Position[][] positions;
	private Robot redPlayer, yellowPlayer;
	private int rows, cols;
	private int turn;
	
	/** Constructors to build the grid */
	public Environment() { this(6,7); }
	public Environment(int rows, int columns) {
		this.rows = rows;
		this.cols = columns;
		this.positions = new Position[this.rows][this.cols];
		for(int row = 0; row < rows; row++) {
			for (int col = 0; col < cols; col++) {
				// Create a new position at (row, col)
				Position p = new Position(row, col, Status.BLANK);
				this.positions[row][col] = p;
			}
		}
		this.turn = 0;
	}
	
	/** Returns an ArrayList of columns with an available space. */
	public ArrayList<Integer> getValidActions() {
		ArrayList<Integer> actions = new ArrayList<Integer>();
		for(int col = 0; col < cols; col++) {
			if (this.positions[0][col].getStatus() == Status.BLANK) {
					actions.add(col);
			}
		}
		return actions;
	}
	
	/** Returns a boolean value indicating whether the game has reached a terminal state */
	public boolean hasGameTerminated() {
		Status status = getGameStatus();
		return (status == Status.DRAW || status == Status.RED_WIN || status == Status.YELLOW_WIN);
	}
	
	/** Runs through each tile and checks to see if it has winning connection. */
	public Status getGameStatus() {
		// Iterate through each tile, checking if there are 4 adjacent tiles that
		// are the same
		for(int row = 0; row < rows; row++) {
			for(int col = 0; col < cols; col++) {
				Status status = this.positions[row][col].getStatus();
				if (status == Status.BLANK)
					continue;
				boolean horizontal = checkHorizontal(row, col);
				boolean vertical = checkVertical(row, col);
				boolean diagonalBR = checkDiagonalBottomRight(row, col);
				boolean diagonalTR = checkDiagonalTopRight(row, col);
				if (horizontal || vertical || diagonalBR || diagonalTR) {
					if(status == Status.RED) {
						return Status.RED_WIN;
					} else {
						return Status.YELLOW_WIN;
					}
				}
			}
		}
		
		// Check for Blank Tiles
		boolean blankTileCheck = false;
		for(int row = 0; row < rows; row++) {
			for (int col = 0; col < cols; col++) {
				if (this.positions[row][col].getStatus() == Status.BLANK) {
					blankTileCheck = true;
				}
			}
		}
		
		// If there are no BLANK spaces left and no 4 connection, the game is
		// a DRAW. Otherwise, the game is still ONGOING.
		if (blankTileCheck)
			return Status.ONGOING;
		else
			return Status.DRAW;
	}
	
	// Looks 4 tiles to the right to see if there are 4 adjacent tiles with
	// the same color
	private boolean checkHorizontal(int row, int col) {
		Status status = this.positions[row][col].getStatus();
		if (col+4 > cols) return false;
		for (int i = 0; i < 4; i++) {
			if(status != this.positions[row][col+i].getStatus())
				return false;
		}
		return true;
	}
	
	// Looks 4 tiles downward to see if there are 4 adjacent tiles with
	// the same color
	private boolean checkVertical(int row, int col) {
		Status status = this.positions[row][col].getStatus();
		if (row+4 > rows) return false;
		for (int i = 0; i < 4; i++) {
			if(status != this.positions[row+i][col].getStatus())
				return false;
		}
		return true;
	}
	
	// Looks 4 tiles to the bottom-right to see if there are 4 adjacent tiles with
	// the same color
	private boolean checkDiagonalBottomRight(int row, int col) {
		Status status = this.positions[row][col].getStatus();
		if (row+4 > rows) return false;
		if (col+4 > cols) return false;
		for (int i = 0; i < 4; i++) {
			if(status != this.positions[row+i][col+i].getStatus())
				return false;
		}
		return true;
	}
	
	// Looks 4 tiles to the top-right to see if there are 4 adjacent tiles with
	// the same color
	private boolean checkDiagonalTopRight(int row, int col) {
		Status status = this.positions[row][col].getStatus();
		if (row-4 < 0) return false;
		if (col+4 > cols) return false;
		for (int i = 0; i < 4; i++) {
			if(status != this.positions[row-i][col+i].getStatus())
				return false;
		}
		return true;
	}
	
	/* Traditional Getters */
	public int getRows() { return this.rows; }
	public int getCols() { return this.cols; }
	
	// Gets the new state of the world after robot actions. The Environment increments the turn
	// variable to determine whose move it is (even turns = YELLOW, odd turns = RED).
	public void updateEnvironment() {
		if (this.redPlayer == null || this.yellowPlayer == null)
			throw new IllegalArgumentException("Agents not initialized");
		if (hasGameTerminated())
			return;
		
		Robot agent;
		// Per the official rules, yellow goes first
		if (this.turn % 2 == 0) {
			// Yellow Player's Turn
			//System.out.print("YELLOW ");
			agent = this.yellowPlayer;
		} else {
			// Red Player's Turn
			//System.out.print("RED ");
			agent = this.redPlayer;
		}
		
		int col = agent.getAction();
		//System.out.println(col);
		
		// Check to make sure this column is a valid move.
		// If it is not, treats the agent's move as DO_NOTHING
		if (validPosition(0, col)) {
			drop(col, agent.getRole());
		}
		
		this.turn++;
	}
	
	/** Returns a boolean value in */ 
	private boolean validPosition(int row, int col) {
		if (row < 0 || row > this.rows-1)
			return false;
		else if (col < 0 || col > this.cols-1)
			return false;
		
		Position position = this.positions[row][col];
		if (position.getStatus() != Status.BLANK)
			return false;
		
		return true;
	}
	
	/** "Drops" the player's marker to the next available spot in the column */
	private void drop(int col, Status role) {
		Status status = Status.RED;
		if (role == Status.YELLOW) {
			status = Status.YELLOW;
		}
		for(int row = 0; row < rows; row++) {
			if (this.positions[row][col].getStatus() != Status.BLANK) {
				this.positions[row-1][col].setStatus(status);
				return;
			}
		}
		this.positions[rows-1][col].setStatus(status);	
	}
	
	/** Adds a player to the game and sets its role (YELLOW or RED) */
	public void addPlayer(Robot robot, Status role) {
		if (role == Status.RED)
			this.redPlayer = robot;
		else if (role == Status.YELLOW)
			this.yellowPlayer = robot;
		
		robot.setRole(role);
	}
	
	/** Returns a cloned copy of the Position[][] positions variable. This
	 * will allow agents to view a copy of the board without actually modifying
	 * the current status of the game. Since Position is a complex data type,
	 * each element in the array needs to be recreated; otherwise it would allow
	 * a malicious agent to "cheat" by automatically changing the Position's status
	 * with setStatus.
	 */
	public Position[][] clonePositions() {
		Position[][] clone = new Position[this.rows][this.cols];
		for (int row = 0; row < this.rows; row++) {
			for (int col = 0; col < this.cols; col++) {
				if (this.positions[row][col].getStatus() == Status.BLANK)
					clone[row][col] = new Position(row, col, Status.BLANK);
				else if (this.positions[row][col].getStatus() == Status.RED)
					clone[row][col] = new Position(row, col, Status.RED);
				else if (this.positions[row][col].getStatus() == Status.YELLOW)
					clone[row][col] = new Position(row, col, Status.YELLOW);
			}
		}
		return clone;
	}
}
