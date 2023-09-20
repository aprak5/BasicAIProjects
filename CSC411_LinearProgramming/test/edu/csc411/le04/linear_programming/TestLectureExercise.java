package edu.csc411.le04.linear_programming;

import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.Test;

public class TestLectureExercise {
	
	@After
	public void tearDown() {
		System.out.println("");
	}

	@Test
	public void testShoes() {
		/*
		 * 12416.666666666666 300 150 10 333	
		 */
		double[] results = LectureExercise.linearProgram_Shoes();
		String[] items = {"Evaluation", "Flats", "Heels", "Wedges", "Sandals"};
		double[] expected_results = {12416.666666666666, 300, 150, 10, 333};
		
		final double EPISILON = 1.0;
		boolean pass = true;
		for (int i = 0; i < results.length; i++) {
			double result = results[i];
			double expected = expected_results[i];
			String line = "%s - Received: %.2f\tExpected: %.2f";
			line = String.format(line, items[i],  result, expected);
			System.out.println(line);
			if (!(Math.abs(result-expected) <= EPISILON)) pass = false;
		}
		assertTrue(pass);
	}
}
