package edu.csc411.le04.linear_programming;

import java.util.ArrayList;
import java.util.Collection;
 
import org.apache.commons.math3.optim.*;
import org.apache.commons.math3.optim.linear.*;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
 
public class TestingApacheCommons {
	public static void main(String[] args) {
		//describe the optimization problem
		LinearObjectiveFunction f = new LinearObjectiveFunction(new double[] { 5, 10}, 0);
		
		Collection<LinearConstraint> constraints = new ArrayList<LinearConstraint>();
		constraints.add(new LinearConstraint(new double[] { 0, 3.3}, Relationship.LEQ, 100));
		constraints.add(new LinearConstraint(new double[] { 1.8, 0}, Relationship.LEQ, 200));
		constraints.add(new LinearConstraint(new double[] { 3.5, 2.1}, Relationship.LEQ, 300));
		constraints.add(new LinearConstraint(new double[] { 0.5, 0}, 0, Relationship.EQ, new double[] { 0, 1}, 0));
	
		//create and run solver
		PointValuePair solution = null;
		LinearConstraintSet constraintSet = new LinearConstraintSet(constraints);
		try {
			solution = new SimplexSolver().optimize(f, constraintSet, GoalType.MAXIMIZE, new NonNegativeConstraint(true));
		} catch (Exception e) {
			System.out.println("no solution fulfilling the constraints can be found");
		}
	
		if (solution != null) {
			// Get solution
			double sol = solution.getValue();
			System.out.println("Optimal: " + sol);
		
			// Print Decision Variables
			for (int i = 0; i < solution.getPoint().length; i++) {
				int variable = (int) solution.getPoint()[i];
				System.out.print(variable + "\t");
			}
			System.out.println("");
		}
	}
}

