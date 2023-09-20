package edu.csc411.le04.linear_programming;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.commons.math3.optim.*;
import org.apache.commons.math3.optim.linear.*;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;

public class LectureExercise {
	public static double[] linearProgram_Shoes() {
		double[] results = new double[5];
		Collection<LinearConstraint> constraints = new ArrayList<LinearConstraint>();
		final int LEATHER = 1500;
		final int RUBBER = 500;
		final int CORK = 200;
		// maximize profit on producing Flats, Heels, Wedges, Sandals
		// In this section, create the inequalities needed to represent this linear programming problem
		// Profit per each type of shoe, $20 per flat, $30 per heel, $25 per wedge, $5 per sandal
		LinearObjectiveFunction f = new LinearObjectiveFunction(new double[] {20, 30, 25, 5}, 0);
		
		// x1 = 2*x2 - Adding this one to represent for every 1 flat, produce 2 heels
		constraints.add(new LinearConstraint(new double[] { 1, 0, 0, 0}, 0, Relationship.EQ, new double[] { 0, 2, 0, 0}, 0));
		
		// Add Constraints for LEATHER, RUBBER, and CORK (should be 3)
		// Material per each type of shoe
		// 2 sq. ft. of leather per flat, 2.8 sq. ft. of leather per heel, 1.2 sq. ft. of leather per wedge, 0.8 sq. ft. of leather per sandal
		constraints.add(new LinearConstraint(new double[] { 2, 2.8, 1.2, 0.8}, Relationship.LEQ, LEATHER));
		// 1.5 sq. ft. of rubber per sandal
		constraints.add(new LinearConstraint(new double[] { 0, 0, 0, 1.5}, Relationship.LEQ, RUBBER));
		// 1.2 sq. ft. of cork per heel and 2 sq. ft. of cork per wedge
		constraints.add(new LinearConstraint(new double[] { 0, 1.2, 2, 0}, Relationship.LEQ, CORK));
		
		// Add Constraints on MINIMAL number of shoes needed to be produced (should be 4)
		// Need to produce at least 10 of each kind of shoe
		constraints.add(new LinearConstraint(new double[] { 1, 0, 0, 0}, Relationship.GEQ, 10));
		constraints.add(new LinearConstraint(new double[] { 0, 1, 0, 0}, Relationship.GEQ, 10));
		constraints.add(new LinearConstraint(new double[] { 0, 0, 1, 0}, Relationship.GEQ, 10));
		constraints.add(new LinearConstraint(new double[] { 0, 0, 0, 1}, Relationship.GEQ, 10));
		
		//create and run solver
		PointValuePair solution = null;
		LinearConstraintSet constraintSet = new LinearConstraintSet(constraints);
		try {
			solution = new SimplexSolver().optimize(f, constraintSet, GoalType.MAXIMIZE, new NonNegativeConstraint(true));
		} catch (Exception e) {
			System.out.println("no solution fulfilling the constraints can be found");
			e.printStackTrace();
		}
		
		if (solution != null) {
			double sol = solution.getValue();
			results[0] = sol;
		
			// We are truncating variables instead of rounding because rounding up may
			// violate a constraint, while truncation will not
			for (int i = 0; i < solution.getPoint().length; i++) {
				int variable = (int) solution.getPoint()[i];
				results[i+1] = variable;
			}
		}
		
		// Return the results with profit, and assignments for each show type
		return results;
	}

	public static void main(String[] args) {
		double[] results = LectureExercise.linearProgram_Shoes();
		String[] items = { "Profit", "Flats", "Heels", "Wedges", "Sandals" };
		System.out.println("Suggested Production:");
		for (int i = 0; i < results.length; i++) {
			double result = results[i];
			String line = "%8s - %.2f";
			line = String.format(line, items[i], result);
			System.out.println(line);
		}
	}
}
