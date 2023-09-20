package edu.ncsu.csc411.ps03.simulation;

import java.util.Arrays;

import edu.ncsu.csc411.ps03.environment.Environment;

/**
 * A non-GUI version of the simulation. This will allow
 * you to quickly test out your implementations without
 * having to wait for each time-step to occur.
 * You are free to modify the environment for testing.
 * @author Adam Gaweda
 */
public class RunSimulation {
	private Environment env;
	private static final int ITERATIONS = 5000;
	
	// Build the simulation with the following parameters
	public RunSimulation(int[][] map) {
		this.env = new Environment(map);
		
	}
	
	// Iterate through the simulation, updating the environment at each time step
	public void run() {		
		for (int i = 1; i <= ITERATIONS; i++) {			
			env.updateConfiguration();
		}
		
		String line = "Configuration after %4d iterations:";
		String msg = String.format(line, ITERATIONS);
		int[] configuration = this.env.getCurrentConfiguration();
		System.out.println(msg);
		System.out.println("Final Configuration: " + Arrays.toString(configuration));
		System.out.println("Score: " + this.env.calcScore(configuration));
		env.writeConfigurationsToFile();
	}
	
	// Returns the fitness score of the current configuration 
	public int getScore() {
		return this.env.calcScore(this.env.getCurrentConfiguration());
	}
	
	public static void main(String[] args) {
		// Currently uses the first public test case
		int[][] map = {
				{23, 17, 13, 30, 13},
				{14, 23, 10, 26, 17},
				{22, 30, 29, 19, 10},
				{19, 11, 28, 12, 22},
				{29, 14, 22, 21, 24},
				
		};
		RunSimulation sim = new RunSimulation(map);
		sim.run();
    }
}