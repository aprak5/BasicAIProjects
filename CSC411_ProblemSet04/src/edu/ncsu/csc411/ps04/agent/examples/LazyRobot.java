package edu.ncsu.csc411.ps04.agent.examples;

import edu.ncsu.csc411.ps04.agent.Robot;
import edu.ncsu.csc411.ps04.environment.Environment;

public class LazyRobot extends Robot {

	public LazyRobot(Environment env) {
		super(env);
	}

	/** Returns -1, or an invalid move, thus DO_NOTHING. */
	@Override
	public int getAction() {
		return -1;
	}

}