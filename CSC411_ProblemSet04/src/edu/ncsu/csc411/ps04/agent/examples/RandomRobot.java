package edu.ncsu.csc411.ps04.agent.examples;

import java.util.ArrayList;

import edu.ncsu.csc411.ps04.agent.Robot;
import edu.ncsu.csc411.ps04.environment.Environment;

public class RandomRobot extends Robot {

	public RandomRobot(Environment env) {
		super(env);
	}

	/**
	 * Rather than playing optimally, RandomRobot is going to pick
	 * a random possible move.
	 */
	@Override
	public int getAction() {
		ArrayList<Integer> possibleActions = env.getValidActions();
		int randomIndex = (int)(Math.random() * possibleActions.size());
		return possibleActions.get(randomIndex);
	}

}
