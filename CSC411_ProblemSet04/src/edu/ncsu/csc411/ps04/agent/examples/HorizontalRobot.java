package edu.ncsu.csc411.ps04.agent.examples;

import edu.ncsu.csc411.ps04.agent.Robot;
import edu.ncsu.csc411.ps04.environment.Environment;

public class HorizontalRobot extends Robot {
	
	private int col;

	public HorizontalRobot(Environment env) {
		super(env);
	}

	/** Returns columns in a left-to-right order. */
	@Override
	public int getAction() {
		int choice = this.col;
		this.col = (choice + 1) % super.env.getCols();
		return choice;
	}

}
