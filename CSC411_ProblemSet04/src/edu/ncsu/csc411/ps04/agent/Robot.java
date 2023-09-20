package edu.ncsu.csc411.ps04.agent;

import edu.ncsu.csc411.ps04.environment.Environment;
import edu.ncsu.csc411.ps04.environment.Position;
import edu.ncsu.csc411.ps04.environment.Status;

public abstract class Robot {
	protected Environment env;
	protected Status role;

	/** Initializes a Robot on a specific tile in the environment. */
	public Robot (Environment env) { 
		this.env = env;
	}
	
	/**
	 * The perceive method is provided for you. This method returns a copy
	 * of the Environments positions array with your potential move in place.
	 * You can utilize this method to see how the environment changes as you
	 * make moves.
	 */
	public Position[][] perceive(int col, Position[][] positions, Status role) {
		if (col >= 0 && col < this.env.getCols()) {
			for (int row = this.env.getRows()-1; row >= 0; row--) {
				if(positions[row][col].getStatus() == Status.BLANK) {
					positions[row][col] = new Position(row, col, role);
					break;
				}
			}
		}
		return positions;
	}
	
	/** Traditional Getters and Setters, you should not need to change your role */
	public void setRole(Status role) { this.role = role; }
	public Status getRole() { return this.role; }

	public abstract int getAction();
}