package edu.ncsu.csc411.ps03.environment;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import edu.ncsu.csc411.ps03.agent.*;

/**
 * The world in which this simulation exists. As a base world,
 * this produces a 10x10 configuration mapping with each [task][worker]
 * pairing equal to zero. Environments can also be created using the
 * (int[][] map) constructor to produce different environments based 
 * on the contents of the integer array.
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class Environment {
	private int[][] values;
	private int numTasks, numWorkers;
	private ConfigurationSolver solver;
	private int[] currentConfiguration;
	/**
	 * While a local search should not need knowledge of prior searches,
	 * this is included so that you can review the evolution of your Solver's
	 * recommendations. In the outputs folder, you'll find CSV files that show
	 * each configuration your Solver provided, along with its fitness score.
	*/
	private ArrayList<int[]> previousConfigurations;
	
	/* Constructors to Develop the Environment */
	public Environment() { this(10,10); }
	public Environment(int numTasks, int numWorkers) {
		this.numTasks = numTasks;
		this.numWorkers = numWorkers;
		this.currentConfiguration = new int[numWorkers];
		this.values = new int[this.numTasks][this.numWorkers];
		for(int row = 0; row < this.numTasks; row++) {
			for (int col = 0; col < this.numWorkers; col++) {
				this.values[row][col] = 0;
			}
		}
		this.solver = new ConfigurationSolver(this);
		this.previousConfigurations = new ArrayList<int[]>();
	}
	public Environment(int[][] map) {
		this(map.length, map[0].length);
		for (int row = 0; row < this.numTasks; row++) {
			for (int col = 0; col < this.numWorkers; col++) {
				this.values[row][col] = map[row][col];
			}
		}
	}
	
	/* Traditional Getters */
	public int[][] getValues() { return this.values; }
	public int getNumTasks() { return this.numTasks; }
	public int getNumWorkers() { return this.numWorkers; }
	public int[] getCurrentConfiguration() { return this.currentConfiguration; }
	public ArrayList<int[]> getPreviousConfigurations() { return this.previousConfigurations; }
	
	// Returns the value for a particular [row][column] pairing
	// (or [task][worker] pairing)
	public int getRowColValue(int row, int col) {
		return this.values[row][col];
	}
	
	// Gets the new configuration of workers from the solver and records it in previousConfigurations
	public void updateConfiguration() {
		int[] newConfig = this.solver.getConfiguration();
		if(validConfiguration(newConfig)) {
			this.currentConfiguration = newConfig;
			// Need to clone the new configuration if we want to store it otherwise
			// Java inserts a memory reference to the Solver's configuration variable
			this.previousConfigurations.add(newConfig.clone());
		}
	}
	
	// Returns true or false based on whether the passed configuration is allowed
	// by the environment's rules. In the Problem Set, that means only 1 worker and
	// be assigned to any given task
	public boolean validConfiguration(int[] newConfig) {
		// Create a mapping of all possible tasks
		Map<Integer, Boolean> check = new HashMap<Integer, Boolean>();
		for(int i = 0; i < this.numTasks; i++) {
			check.put(i, false);
		}
		// Traverse the new configuration and set any given task to true
		for(int i = 0; i < newConfig.length; i++) {
			int task = newConfig[i];
			if (check.get(task)) {
				// if it is already true, one task cannot be assigned to two people
				return false;
			} else {
				check.put(task,  true);
			}
		}
		// Check that all tasks are assigned
		for(int task : check.keySet()) {
			// If not, return false
			if (!check.get(newConfig[task]))
				return false;
		}
		// Return true if all conditions passed
		return true;
	}
	
	// Iterates through the passed configuration and returns the running total 
	public int calcScore(int[] configuration) {
		int score = 0;
		for(int worker = 0; worker < this.numWorkers; worker++) {
			score += getRowColValue(configuration[worker], worker);
		}
		return score;
	}
	
	// Writes all the previous given configurations by the Solver to a CSV file.
	// This may be useful for troubleshooting or reviewing when your Solver ran into
	// a local maxima.
	public void writeConfigurationsToFile() {
		String filename = "outputs/previous_configurations_n"+this.numWorkers+".csv";
		try {
			PrintWriter output = new PrintWriter(filename);
			for(int[] prev : this.previousConfigurations) {
				String line = "";
				for(int j = 0; j < prev.length; j++) {
					line += prev[j] + ",";
				}
				line += calcScore(prev);
				output.println(line);
			}
			output.close();
		} catch (IOException ioe) {
			System.out.println(ioe);
		}
	}
}