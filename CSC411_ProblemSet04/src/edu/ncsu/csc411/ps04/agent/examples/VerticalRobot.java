package edu.ncsu.csc411.ps04.agent.examples;

import edu.ncsu.csc411.ps04.agent.Robot;
import edu.ncsu.csc411.ps04.environment.Environment;

public class VerticalRobot extends Robot {

	public VerticalRobot(Environment env) {
		super(env);
	}

	/** Only returns the right column */
	@Override
	public int getAction() {
		return super.env.getCols()-1;
	}

}