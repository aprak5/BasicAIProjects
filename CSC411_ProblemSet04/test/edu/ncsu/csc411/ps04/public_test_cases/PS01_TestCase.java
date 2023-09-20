package edu.ncsu.csc411.ps04.public_test_cases;

import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.Before;
import org.junit.Test;

import edu.ncsu.csc411.ps04.agent.StudentRobot;
import edu.ncsu.csc411.ps04.agent.examples.RandomRobot;
import edu.ncsu.csc411.ps04.environment.Environment;
import edu.ncsu.csc411.ps04.environment.Status;
import edu.ncsu.csc411.ps04.simulation.RunSimulation;

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
public class PS01_TestCase {
	private int numTrials = 100;
	private int successfulTrials = 0;
	private String line = "Test %02d success rate: %.2f after %d trials";
	private String trialMsg = "Trial %02d: ";
	private double threshold = 0.6; // 60% victory
	
	@Before
	public void setUp() {
		successfulTrials = 0;
	}

	// StudentRobot is Yellow Player (goes first)
	@Test(timeout=300000)
	public void testEnvironment01() {
		for (int trial = 0; trial < numTrials; trial++) {
			RunSimulation sim = new RunSimulation();
			Environment env = sim.getEnvironment();
			sim.addPlayer(new StudentRobot(env), Status.YELLOW);
			sim.addPlayer(new RandomRobot(env), Status.RED);
			sim.run();
			boolean status = sim.hasGameTerminated();
			if (status) {
				Status state = sim.getGameStatus();
				String msg;
				switch(state) {
					case DRAW:
						msg = String.format(trialMsg, trial+1);
						System.out.print(msg);
						break;
					case RED_WIN:
						msg = String.format(trialMsg, trial+1);
						System.out.print(msg);
						break;
					case YELLOW_WIN:
						msg = String.format(trialMsg, trial+1);
						System.out.print(msg);
						successfulTrials++;
						break;
					default:
						break;
				}
			}
		}

		String msg = String.format(line, 1, successfulTrials/(numTrials*1.0)*100, numTrials);
		System.out.println(msg);
		assertTrue(successfulTrials/(numTrials*1.0) >= threshold, msg);
	}
	
	// StudentRobot is Red Player (goes second)
	@Test(timeout=300000)
	public void testEnvironment02() {
		for (int trial = 0; trial < numTrials; trial++) {
			RunSimulation sim = new RunSimulation();
			Environment env = sim.getEnvironment();
			sim.addPlayer(new RandomRobot(env), Status.YELLOW);
			sim.addPlayer(new StudentRobot(env), Status.RED);
			sim.run();
			boolean status = sim.hasGameTerminated();
			if (status) {
				Status state = sim.getGameStatus();
				String msg;
				switch(state) {
					case DRAW:
						msg = String.format(trialMsg, trial+1);
						System.out.print(msg);
						break;
					case RED_WIN:
						msg = String.format(trialMsg, trial+1);
						System.out.print(msg);
						successfulTrials++;
						break;
					case YELLOW_WIN:
						msg = String.format(trialMsg, trial+1);
						System.out.print(msg);
						break;
					default:
						break;
				}
			}
		}

		String msg = String.format(line, 1, successfulTrials/(numTrials*1.0)*100, numTrials);
		System.out.println(msg);
		assertTrue(successfulTrials/(numTrials*1.0) >= threshold, msg);
	}
}
