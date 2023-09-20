package edu.ncsu.csc411.ps04.simulation;

import edu.ncsu.csc411.ps04.agent.Robot;
import edu.ncsu.csc411.ps04.agent.StudentRobot;
import edu.ncsu.csc411.ps04.agent.examples.RandomRobot;
import edu.ncsu.csc411.ps04.agent.examples.GreedyRobot;
import edu.ncsu.csc411.ps04.agent.examples.HorizontalRobot;
import edu.ncsu.csc411.ps04.agent.examples.VerticalRobot;
import edu.ncsu.csc411.ps04.agent.examples.LazyRobot;
import edu.ncsu.csc411.ps04.environment.Environment;
import edu.ncsu.csc411.ps04.environment.Status;

/**
 * A non-GUI version of the simulation. This will allow
 * you to quickly test out your implementations without
 * having to wait for each time-step to occur (there is a
 * 200 millisecond delay between time-steps in the visualization).
 * 
 * @author Adam Gaweda
 */
public class RunSimulation {
	private Environment env;
	private int interations;
	
	// Build the simulation with the following parameters
	public RunSimulation() {
		this.env = new Environment();
		this.interations = 42;
	}
	
	// Iterate through the simulation, updating the environment at each time step
	public void run() {
		for (int i = 0; i < this.interations; i++) {
			try {
				// Wrapped in try/catch in case the Robot's decision results
				// in a crash; we'll treat that the same as Action.DO_NOTHING
				env.updateEnvironment();
			} catch (Exception ex) {
				System.out.println(ex + ex.getStackTrace()[5].toString());
			}
			
			// Quit the simulation early if the game is over
			boolean status = env.hasGameTerminated();
			if (status) {
				break;
			}
		}
		Status state = env.getGameStatus();
		String msg;
		switch(state) {
			case DRAW:
				msg = String.format("%s!", "DRAW");
				System.out.println(msg);
				break;
			case RED_WIN:
				msg = String.format("%s!", "RED WINS");
				System.out.println(msg);
				break;
			case YELLOW_WIN:
				msg = String.format("%s!", "YELLOW WINS");
				System.out.println(msg);
				break;
			default:
				System.out.println("Game ended prematurely " + state);
				break;
		}
	}
	
	public Environment getEnvironment() {
		return this.env;
	}
	
	public void addPlayer(Robot robot, Status role) {
		this.env.addPlayer(robot, role);
	}
	
	// Returns the Environment's getGameStatus results
	public Status getGameStatus() {
		return env.getGameStatus();
	}
	
	// Returns the Environment's getGameStatus results
	public boolean hasGameTerminated() {
		return env.hasGameTerminated();
	}

	public static void main(String[] args) {
		RunSimulation sim = new RunSimulation();
		Environment env = sim.getEnvironment();
		sim.addPlayer(new StudentRobot(env), Status.YELLOW);
		sim.addPlayer(new RandomRobot(env), Status.RED);
		sim.run();
    }
}