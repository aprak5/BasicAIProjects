package edu.ncsu.csc411.ps04.agent;

import java.util.ArrayList;

import edu.ncsu.csc411.ps04.environment.Environment;

public class StudentRobot extends Robot {

	public StudentRobot(Environment env) {
		super(env);
	}

	/**
	 * Problem Set 04 - For this Problem Set you will design an agent that can play Connect Four. 
	 * The goal of Connect Four is to "connect" four (4) markers of the same color (role) 
	 * horizontally, vertically, or diagonally. In this exercise your getAction method should 
	 * return an integer between 0 and 6 (inclusive), representing the column you would like to 
	 * "drop" your marker. Unlike previous Problem Sets, in this environment, you will be alternating 
	 * turns with another agent. To complete this Problem Set, you must win 60% of your games against
	 * RandomRobot as both the Yellow player (Test Case 01) and as the Red Player (Test Case 02).
	 * 
	 * In addition, there are multiple example agents found in the edu.ncsu.csc411.ps04.examples package.
	 * You will only need to successfully beat the RandomRobot.java adversary to earn a passing grade.
	 * Horizontal- and VerticalRobot have been included as simple test robots to allow you to review 
	 * your strategy within a minimal environment. GreedyRobot, however, is a greedy best-first Robot
	 * that you are welcome to test your implementation against. An explanation of GreedyRobot's
	 * implementation can be found in its source code. Finally, if you have successfully passed
	 * your test cases, you are welcome to test your implementation against your classmates.
	 * 
	 * While Simple Reflex or Model-based agent may be able to succeed, consider exploring the Minimax
	 * search algorithm to maximize your chances of winning. While the first two will be easier, you may
	 * want to place priority on moves that prevent the adversary from winning.
	 */
	
	/**
	 * This method uses minimax(), which implements the minimax search algorithm with alpha-beta pruning,
	 * to search for the best action out of the possible actions in the environment and returns it for the next action.
	 * @return The best possible action out of actions.
	 */
	@Override
	public int getAction() {
		ArrayList<Integer> actions = super.env.getValidActions();
		return minimax(0, 0, true, actions, Integer.MIN_VALUE, Integer.MAX_VALUE);
	}
	
	/**
	 * A method for finding the best option out of the options given using minimax (with alpha-beta pruning).
	 * @param depth The depth we're going to be looking at.
	 * @param nodeIndex The nodeIndex we're going to look at first.
	 * @param maximizingAgent Whether we want to keep maximizing.
	 * @param options The options for the actions.
	 * @param alpha The alpha value for the pruning.
	 * @param beta The beta value for the pruning.
	 * @return bestScore: The best possible option out of options.
	 */
	private static int minimax(int depth, int nodeIndex, Boolean maximizingAgent, ArrayList<Integer> options, int alpha, int beta) {
		// Terminating condition, ex. leaf node is reached
	    if (depth == 6 || nodeIndex >= 6)
	        return options.get(options.size() - 1);
	    
	    //Otherwise, while maximizing score for this player (agent)
	    if (maximizingAgent)
	    {
	    	//Set the best score as the lowest score possible
	        int bestScore = Integer.MIN_VALUE;
	 
	        // Recursive for left and
	        // right children
	        for (int i = 0; i < 2; i++)
	        {
	            int val = minimax(depth + 1, nodeIndex * 2 + i,
	                              false, options, alpha, beta);
	            //Max part of minimax
	            bestScore = Math.max(bestScore, val);
	            alpha = Math.max(alpha, bestScore);
	 
	            // Alpha-Beta pruning for minimax
	            if (beta <= alpha)
	                break;
	        }
	        //Returns best option from choices
	        return bestScore;
	    }
	    else
	    {
	    	//Set the best score as the highest score possible
	        int bestScore = Integer.MAX_VALUE;
	 
	        // Recursive for left and
	        // right children
	        for (int i = 0; i < 2; i++)
	        {
	             
	            int val = minimax(depth + 1, nodeIndex * 2 + i,
	                              true, options, alpha, beta);
	            bestScore = Math.min(bestScore, val);
	            beta = Math.min(beta, bestScore);
	 
	            // Alpha-Beta pruning for minimax
	            if (beta <= alpha)
	                break;
	        }
	        //Returns best option from choices
	        return bestScore;
	    }
	}		
}















