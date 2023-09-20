package edu.csc411.le04.linear_programming;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.commons.math3.optim.*;
import org.apache.commons.math3.optim.linear.*;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;

public class ProblemSet03AsLinearProgramming {
	// Test Case 01
	public static final int[][] ASSIGNMENT = {
			{23, 17, 13, 30, 13},
			{14, 23, 10, 26, 17},
			{22, 30, 29, 19, 10},
			{19, 11, 28, 12, 22},
			{29, 14, 22, 21, 24},
	};
	// Test Case 05
//	public static final int[][] ASSIGNMENT = {
//			{31, 35, 18, 33, 88, 95, 41, 50, 43},
//			{98, 29, 93, 42, 13, 41, 19, 53, 90},
//			{15, 79, 71, 50, 32, 91, 86, 12, 16},
//			{27, 48, 44, 22, 74, 70, 18, 17, 35},
//			{78, 31, 78, 39, 19, 88, 10, 86, 88},
//			{28, 88, 40, 17, 83, 36, 27, 38, 86},
//			{64, 63, 20, 64, 70, 40, 73, 32, 84},
//			{90, 91, 12, 80, 72, 15, 60, 50, 87},
//			{39, 49, 27, 89, 88, 93, 87, 23, 63},
//	};

	public static void main(String[] args) {
		// Here is a good video outlining the constraints and objective function
		// https://www.youtube.com/watch?v=APTweXuMw3w
		double[] objectiveFunction = flatten(ASSIGNMENT);
		System.out.println("Objective Function");
		printArray(objectiveFunction);
		
		LinearObjectiveFunction f = new LinearObjectiveFunction(objectiveFunction, 0);

		// Builds an ArrayList full of constraints
		Collection<LinearConstraint> constraints = new ArrayList<LinearConstraint>();

		// Constraints
		// Task Coefficients - 1 task can only be operated by 1 person
		for(int i = 0; i < ASSIGNMENT.length; i++) {
			//System.out.println("Task 0"+(i+1)+" Coefficient");
			//printArray(taskCoefficient(i, ASSIGNMENT.length, objectiveFunction.length));
			constraints.add(new LinearConstraint(taskCoefficient(i, ASSIGNMENT.length, objectiveFunction.length), Relationship.EQ, 1));
		}
		
		// Person 01
		// Person Coefficients - 1 person can only operate 1 task
		for(int i = 0; i < ASSIGNMENT.length; i++) {
			//System.out.println("Person 0"+(i+1)+" Coefficient");
			//printArray(personCoefficient(i, ASSIGNMENT.length, objectiveFunction.length));
			constraints.add(new LinearConstraint(personCoefficient(i, ASSIGNMENT.length, objectiveFunction.length), Relationship.EQ, 1));
		}

		// Create and Run Solver
		PointValuePair solution = null;
		LinearConstraintSet constraintSet = new LinearConstraintSet(constraints);
		try {
			solution = new SimplexSolver().optimize(f, constraintSet, 
					GoalType.MAXIMIZE, 
					// No Negative Variables 
					new NonNegativeConstraint(true));
		} catch (Exception e) {
			System.out.println("no solution fulfilling the constraints can be found");
			e.printStackTrace();
		}

		if (solution != null) {
			// Get solution
			double sol = solution.getValue();
			System.out.println("Optimal Profit: " + sol);

			// Print Decision Variables
			printArray(solution.getPoint());
			for (int i = 0; i < solution.getPoint().length; i++) {
				int variable = (int) solution.getPoint()[i];
				if (variable == 1) {
					int person = (i % ASSIGNMENT.length) + 1;
					int task = (i / ASSIGNMENT.length) + 1;
					System.out.println(String.format("Person %02d Task %02d -- %d", person, task, (int)objectiveFunction[i]));
				}
			}
			System.out.println("");
		}
	}

	private static double[] flatten(int[][] array) {
		double[] flattenArray = new double[array.length*array.length];
		int count = 0;
		for (int i = 0; i < array.length; i++) {
			for (int j = 0; j < array.length; j++) {
				flattenArray[count] = array[i][j]*1.0;
				count++;
			}
		}
		return flattenArray;
	}

	// Print the array using the foreach feature
	private static void printArray(double[] array) {
		System.out.print("{");
		for (int i = 0; i < array.length; i++) {
			String padding = ", ";
			if (i == array.length - 1) {
				padding = "";
			}
			System.out.print(array[i] + padding);
		}
		System.out.println("}");
	}
	
	private static double[] taskCoefficient(int p, int t, int length) {
		double[] coefficient = new double[length];
		for (int i = 0; i < t; i++) {
			coefficient[(p*t)+i] = 1;
		}
		return coefficient;
	}
	
	private static double[] personCoefficient(int p, int t, int length) {
		double[] coefficient = new double[length];
		for (int i = 0; i < t; i++) {
			coefficient[(i*t)+p] = 1;
		}
		return coefficient;
	}
}

