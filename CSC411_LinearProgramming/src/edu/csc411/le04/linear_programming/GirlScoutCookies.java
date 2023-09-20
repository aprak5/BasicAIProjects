package edu.csc411.le04.linear_programming;

import java.util.ArrayList;
import java.util.Collection;
 
import org.apache.commons.math3.optim.*;
import org.apache.commons.math3.optim.linear.*;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
 
public class GirlScoutCookies {
	public static void main(String[] args) {
		// maximize 25*X1 + 30*X2 
		LinearObjectiveFunction f = new LinearObjectiveFunction(new double[] { 25, 30}, 0);
		
		// Builds an ArrayList full of constraints
		Collection<LinearConstraint> constraints = new ArrayList<LinearConstraint>();
		
		// such that
		//  X1 <= 500
		final int TREFOILS = 75;
		constraints.add(new LinearConstraint(new double[] { 1, 0}, Relationship.LEQ, TREFOILS));
		
		//  X2 <= 500 
		final int THINMINTS = 75;
		constraints.add(new LinearConstraint(new double[] { 0, 1}, Relationship.LEQ, THINMINTS));
		
		//  X1 + X2 <= 800
		final int CAPACITY = 800;
		constraints.add(new LinearConstraint(new double[] { 1, 1}, Relationship.LEQ, CAPACITY));
	
		// Create and Run Solver
		PointValuePair solution = null;
		LinearConstraintSet constraintSet = new LinearConstraintSet(constraints);
		try {
			solution = new SimplexSolver().optimize(f, constraintSet, GoalType.MAXIMIZE, 
								                    // No Negative Variables 
								                    new NonNegativeConstraint(true));
		} catch (Exception e) {
			System.out.println("no solution fulfilling the constraints can be found");
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
		}
	}
}

