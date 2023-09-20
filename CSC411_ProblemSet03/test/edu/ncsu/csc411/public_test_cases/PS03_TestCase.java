package edu.ncsu.csc411.public_test_cases;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.concurrent.TimeUnit;

import org.junit.Before;
import org.junit.Test;
import org.junit.jupiter.api.Timeout;

import edu.ncsu.csc411.ps03.simulation.RunSimulation;

/**
 * This JUnit test suite uses JUnit5. In order to run these 
 * test cases, you will need to have JUnit5 installed on your
 * local machines. You can set your Project to use JUnit5 by
 * right-clicking on the project and selecting "Properties", then
 * selecting "Java Build Path". Finally, selecting "Add Library..."
 * will allow you to select "JUnit" and specify the version.
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */ 
public class PS03_TestCase {
	private int numTrials = 100;
	private int successfulTrials = 0;
	private String line = "Test %02d success rate: %.2f after %d trials";
	
	@Before
	public void setUp() {
		successfulTrials = 0;
	}

	// This Problem Set utilizes the timeout feature with JUnit test cases.
	// This means that after 300 seconds (or 5 minutes) the test will fail.
	// This is to prevent time expensive brute force decisions.
	@Test
	@Timeout(value=300, unit=TimeUnit.SECONDS)
	public void testEnvironment01() {
		int[][] map = {
			{23, 17, 13, 30, 13},
			{14, 23, 10, 26, 17},
			{22, 30, 29, 19, 10},
			{19, 11, 28, 12, 22},
			{29, 14, 22, 21, 24},
				
		};
		
		// Each test's success threshold is slightly above the median, which has been
		// included for your reference.
		int threshold = 110; // median 100
		
		// Each environment will be executed 100 times
		for (int trial = 0; trial < numTrials; trial++) {
			RunSimulation sim = new RunSimulation(map);
			sim.run();
			// If the simulation is above the threshold, the
			// trial is considered a success
			if(sim.getScore() >= threshold) {
				successfulTrials++;
			}
		}

		String msg = String.format(line, 1, successfulTrials/(numTrials*1.0)*100, numTrials);
		System.out.println(msg);
		// To pass the test case, you must successfully complete 70% of the trials
		assertTrue(successfulTrials/(numTrials*1.0) >= 0.7, msg);
	}
	
	// Environment 02 is a Sanity Check with a clear optimal configuration 
	@Test
	@Timeout(value=300, unit=TimeUnit.SECONDS)
	public void testEnvironment02() {
		int[][] map = {
				{10, 10, 10, 90, 10},
				{10, 90, 10, 10, 10},
				{90, 10, 10, 10, 10},
				{10, 10, 90, 10, 10},
				{10, 10, 10, 10, 90},					
			};
		
		// Your code should be able to reach the optimal configuration in this test
		int threshold = 450;
		
		for (int trial = 0; trial < numTrials; trial++) {
			RunSimulation sim = new RunSimulation(map);
			sim.run();
			if(sim.getScore() >= threshold) {
				successfulTrials++;
			}
		}

		String msg = String.format(line, 2, successfulTrials/(numTrials*1.0)*100, numTrials);
		System.out.println(msg);
		assertTrue(successfulTrials/(numTrials*1.0) >= 0.7, msg);
	}
	
	// Tests 03-05 increase the difficulty to brute force solutions by increasing the
	// number of possible permutations to 9!, or 362,880
	@Test
	@Timeout(value=300, unit=TimeUnit.SECONDS)
	public void testEnvironment03() {
		int[][] map = {
				{60, 88, 67, 88, 70, 97, 76, 27, 28},
				{21, 60, 45, 13, 82, 88, 69, 60, 15},
				{29, 50, 87, 31, 66, 87, 54, 90, 54},
				{40, 99, 52, 75, 33, 69, 21, 83, 51},
				{98, 96, 31, 95, 55, 89, 95, 57, 15},
				{19, 91, 36, 22, 38, 51, 79, 62, 64},
				{91, 81, 98, 23, 31, 50, 23, 96, 66},
				{71, 38, 11, 81, 30, 83, 55, 35, 24},
				{81, 79, 29, 25, 37, 23, 95, 42, 55},
			};
		int threshold = 560; // median 518
		
		for (int trial = 0; trial < numTrials; trial++) {
			RunSimulation sim = new RunSimulation(map);
			sim.run();
			if(sim.getScore() >= threshold) {
				successfulTrials++;
			}
		}

		String msg = String.format(line, 3, successfulTrials/(numTrials*1.0)*100, numTrials);
		System.out.println(msg);
		assertTrue(successfulTrials/(numTrials*1.0) >= 0.7, msg);
	}
	
	@Test
	@Timeout(value=300, unit=TimeUnit.SECONDS)
	public void testEnvironment04() {
		int[][] map = {
				{23, 33, 15, 19, 53, 78, 66, 70, 24},
				{88, 57, 70, 48, 28, 85, 93, 79, 60},
				{69, 75, 79, 97, 30, 50, 11, 71, 22},
				{35, 48, 34, 66, 49, 96, 82, 73, 71},
				{76, 21, 42, 63, 15, 54, 42, 32, 52},
				{51, 36, 19, 14, 66, 25, 18, 41, 37},
				{90, 95, 31, 11, 82, 44, 37, 13, 97},
				{92, 20, 90, 52, 82, 42, 91, 83, 52},
				{27, 69, 29, 13, 79, 23, 37, 20, 10},
			};
		int threshold = 500; // median 462
		
		for (int trial = 0; trial < numTrials; trial++) {
			RunSimulation sim = new RunSimulation(map);
			sim.run();
			if(sim.getScore() >= threshold) {
				successfulTrials++;
			}
		}

		String msg = String.format(line, 4, successfulTrials/(numTrials*1.0)*100, numTrials);
		System.out.println(msg);
		assertTrue(successfulTrials/(numTrials*1.0) >= 0.7, msg);
	}
	
	@Test
	@Timeout(value=300, unit=TimeUnit.SECONDS)
	public void testEnvironment05() {
		int[][] map = {
				{31, 35, 18, 33, 88, 95, 41, 50, 43},
				{98, 29, 93, 42, 13, 41, 19, 53, 90},
				{15, 79, 71, 50, 32, 91, 86, 12, 16},
				{27, 48, 44, 22, 74, 70, 18, 17, 35},
				{78, 31, 78, 39, 19, 88, 10, 86, 88},
				{28, 88, 40, 17, 83, 36, 27, 38, 86},
				{64, 63, 20, 64, 70, 40, 73, 32, 84},
				{90, 91, 12, 80, 72, 15, 60, 50, 87},
				{39, 49, 27, 89, 88, 93, 87, 23, 63},			
		};
		int threshold = 525; // median 478
		
		for (int trial = 0; trial < numTrials; trial++) {
			RunSimulation sim = new RunSimulation(map);
			sim.run();
			if(sim.getScore() >= threshold) {
				successfulTrials++;
			}
		}

		String msg = String.format(line, 5, successfulTrials/(numTrials*1.0)*100, numTrials);
		System.out.println(msg);
		assertTrue(successfulTrials/(numTrials*1.0) >= 0.7, msg);
	}
	
}
