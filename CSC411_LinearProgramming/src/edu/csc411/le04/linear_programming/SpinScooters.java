package edu.csc411.le04.linear_programming;

import java.util.ArrayList;
import java.util.Collection;
 
import org.apache.commons.math3.optim.*;
import org.apache.commons.math3.optim.linear.*;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
 
public class SpinScooters {
	public static void main(String[] args) {
		// maximize 600*X1 + 800*X2 
		LinearObjectiveFunction f = new LinearObjectiveFunction(new double[] { 600, 800}, 0);
		
		// Builds an ArrayList full of constraints
		Collection<LinearConstraint> constraints = new ArrayList<LinearConstraint>();
		
		// such that
		//  MOTORS - X1 + X2 <= 75
		final int MOTORS = 75;
		constraints.add(new LinearConstraint(new double[] { 1, 1}, Relationship.LEQ, MOTORS));
		
		//  LABOUR HOURS - 20*X1 + 30*X2 <= 2000
		final int LABOURHOURS = 2000;
		constraints.add(new LinearConstraint(new double[] { 20, 30}, Relationship.LEQ, LABOURHOURS));
		
		//  METAL - 20*X1 + 16*X2 <= 3000 
		final int METAL = 3000;
		constraints.add(new LinearConstraint(new double[] { 20, 16}, Relationship.LEQ, METAL));
	
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
			// Converts doubles into integer values; in case that matters
			// Get solution
			double sol = solution.getValue();
			System.out.println("Optimal Profit: " + sol);
		
			// Print Decision Variables
			for (int i = 0; i < solution.getPoint().length; i++) {
				int variable = (int) solution.getPoint()[i];
				System.out.print(variable + "\t");
			}
			System.out.println("");
		}
	}
}

