/**
 * @file ConfigurationSolver.java This file is code for the agent that solves for the best environment configuration.
 * @author Amit Prakash (aprakas5) and Dr. Adam Gaweda (agaweda)
 */

//Package imports and declarations for this program
package edu.ncsu.csc411.ps03.agent;

import java.util.ArrayList;
import java.util.Collections;
import edu.ncsu.csc411.ps03.environment.Environment;

/**
 * Represents a linear assignment problem where N workers must be assigned to N
 * tasks. Each worker/task combination is further associated with some value.
 * The goal of this task is the produce an optimal configuration that maximizes
 * (or minimizes) the sum of the assigned worker/task values.
 */
public class ConfigurationSolver {
	/** The environment for this ConfigurationSolver */
	private Environment env;
	/** The current configuration */
	private int[] configuration;
	/** The current configuration's score */
	private int score = 0;
	/** The current temperature */
	private int t = 0;

	/**
	 * Initializes a Configuration Solver for a specific environment.
	 * 
	 * @param env The environment that needs to be initialized.
	 * @return The environment fully initialized.
	 */
	public ConfigurationSolver(Environment env) {
		//Initialize environment and configuration
		this.env = env;
		this.configuration = new int[this.env.getNumWorkers()];
		// Initializing by assigning work to an arbitrary task
		for (int i = 0; i < this.configuration.length; i++) {
			this.configuration[i] = i;
		}
	}

	/**
	 * Problem Set 03 - For this Problem Set, you will be exploring search methods
	 * for optimal configurations. In this exercise, you are given a linear
	 * assignment problem, where you must determine the appropriate configuration
	 * assignments for persons to tasks. Specifically, you are seeking to MAXIMIZE
	 * the fitness score of this configuration. While brute forcing your search will
	 * provide you with the optimal solution, you run into the issue that there are
	 * N! possible permutations, which can increase your search space as N
	 * increases. Instead, utilize one of the search methods presented in class to
	 * tackle this problem.
	 * 
	 * For the nextConfiguration(), design an algorithm that will return a one
	 * dimensional integer array storing numbers from 0 to N-1, representing which
	 * task is assigned to which worker. For example, in an N=5 problem space,
	 * nextConfiguration() may return {4,1,2,3,0}, where Worker #4 is assigned Task
	 * #3.
	 */

	/**
	 * Returns the best configuration for this environment via simulated annealing.
	 * @return The best configuration
	 */
	public int[] getConfiguration() {
		// Randomly generate a new configuration - while this may give you a good
		// solution,
		// random runs the obvious issue of repeatedly producing sub-optimal solutions.
//		ArrayList<Integer> options = new ArrayList<Integer>();
//		for(int i = 0; i < this.configuration.length; i++) {
//			options.add(i);
//		}
//		Collections.shuffle(options);
//		int[] newConfiguration = new int[this.configuration.length];
//		for(int i = 0; i < newConfiguration.length; i++) {
//			newConfiguration[i] = options.get(i);
//		}
//		// validConfiguration will check to ensure that your new configuration is actually valid
//		if(env.validConfiguration(newConfiguration)) {
//			this.configuration = newConfiguration;
//		}
//		
//		//System.out.println(Arrays.toString(this.configuration) + " = " + env.calcScore(this.configuration));
		//Get/set configuration via simulatedAnnealing()
		configuration = simulatedAnnealing(); 
		//Return the configuration returned from simulatedAnnealing()
		return this.configuration;
	}

	/**
	 * Uses the simulating annealing pseudocode algorithm, where a temperature is updated according to whether the configuration is better or worst.
	 * Uses a random neighbor for the candidate or if this the first time the method is called. If the configuration is better it is guaranteed to be used.
	 * If not, there is a probability e^T that the worse configuration is used. Returns a better/worst configuration.
	 * @return The best configuration according to the simulation.
	 */
	private int[] simulatedAnnealing() {
		//Initialize the state to this current configuration
		int[] state = env.getCurrentConfiguration();
		//Initialize the state's score for this current configuration
		score = env.calcScore(env.getCurrentConfiguration());
		//Initialize the temperature for this current configuration
		int T = t;
		//If the temperature is 0, increment it and return the current configuration as a random state.
		if (T == 0) {
			t++;
			state = randomConfiguration();
			return state;
		}
		//Generate the candidate state as a random one
		int[] candidate = randomConfiguration();
		//Calculate whether this score is better or worse
		int E = env.calcScore(candidate) - score;
		//If the score is the same as or better than the current one, 
		//increment the temperature and return the current configuration as a random state.
		if (E >= 0) {
			state = candidate;
			t++;
			return state;
		//If not, calculate the probability of whether or not the configuration is used. 
		//Use the probability to either pick the current configuration as a random state and decrease the temperature or return the current configuration without change.
		} else {
			double prob = Math.exp(E / T);
			if (prob > Math.random()) {
				state = candidate;
				t /= (Math.sqrt(Math.random() * Math.E) + Math.random() * Math.E);
			}
			return state;
		}
	}

	/**
	 * The random configuration generated via randomly shuffling the numbers for a configuration and accessing it.
	 * @return A random configuration
	 */
	private int[] randomConfiguration() {
		// Randomly generate a new configuration
		//Make/initialize options with all configuration indices in order.
		ArrayList<Integer> options = new ArrayList<Integer>();
		for (int i = 0; i < this.configuration.length; i++) {
			options.add(i);
		}
		//Shuffle options randomly
		Collections.shuffle(options);
		//Make/initalize/return a newConfiguration as options
		int[] newConfiguration = new int[this.configuration.length];
		for (int i = 0; i < newConfiguration.length; i++) {
			newConfiguration[i] = options.get(i);
		}
		return newConfiguration;
	}
}