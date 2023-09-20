package edu.ncsu.csc411.ps01.simulation;

import edu.ncsu.csc411.ps01.environment.Environment;
import edu.ncsu.csc411.ps01.utils.MapManager;

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
	private boolean displaySimErrors;
	
	// Build the simulation with the following parameters
	public RunSimulation(String mapFile, int iterations) {
		String[] map = MapManager.loadMap(mapFile);
		this.env = new Environment(map);
		this.interations = iterations;
		this.displaySimErrors = true;
	}
	
	public void disableSimErrors() {
		this.displaySimErrors = false;
	}
	
	// Iterate through the simulation, updating the environment at each time step
	public void run() {
		for (int i = 1; i <= this.interations; i++) {
			try {
				// Wrapped in try/catch in case the Robot's decision results
				// in a crash; we'll treat that the same as Action.DO_NOTHING
				env.updateEnvironment();
			} catch (Exception ex) {
				if (this.displaySimErrors) {
					String error = "[ERROR AGENT CRASH AT TIME STEP %03d] %s\n";
					System.out.printf(error, i, ex, ex.getStackTrace());
				}
			}
			
			// Quit the simulation early if there are no more dirty tiles
			if (this.env.getNumCleanedTiles() == this.env.getNumTiles()) {
				break;
			}
		}
		env.printPerformanceMeasure();
	}
	
	// Returns the Environment's getPerformanceMeasure results
	public double getPerformanceMeasure() {
		return env.getPerformanceMeasure();
	}

	public static void main(String[] args) {
		// Currently uses the first public test case
		String mapFile = "maps/public/map04.txt";
		int iterations = 200;
		RunSimulation sim = new RunSimulation(mapFile, iterations);
		sim.run();
    }
}