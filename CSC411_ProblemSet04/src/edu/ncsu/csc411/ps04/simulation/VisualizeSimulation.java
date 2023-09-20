package edu.ncsu.csc411.ps04.simulation;

import edu.ncsu.csc411.ps04.agent.examples.GreedyRobot;
import edu.ncsu.csc411.ps04.agent.examples.HorizontalRobot;
import edu.ncsu.csc411.ps04.agent.examples.LazyRobot;
import edu.ncsu.csc411.ps04.agent.examples.RandomRobot;
import edu.ncsu.csc411.ps04.agent.examples.VerticalRobot;
import edu.ncsu.csc411.ps04.agent.StudentRobot;
import edu.ncsu.csc411.ps04.environment.Environment;
import edu.ncsu.csc411.ps04.environment.Position;
import edu.ncsu.csc411.ps04.environment.Status;

import java.awt.Dimension;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.Timer;

/**
 * A Visual Guide toward testing whether your robot
 * agent is operating correctly. This visualization
 * will run for 100 time steps, afterwards it will
 * output the number of tiles cleaned, and a percentage
 * of the room cleaned.
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class VisualizeSimulation extends JFrame {
	private static final long serialVersionUID = 1L;
	private EnvironmentPanel envPanel;
	private Environment env;
	
	public VisualizeSimulation() {
		this.env = new Environment();
		this.env.addPlayer(new GreedyRobot(this.env), Status.YELLOW);
		this.env.addPlayer(new RandomRobot(this.env), Status.RED);
    	envPanel = new EnvironmentPanel(this.env);
    	add(envPanel);
	}
	
	public static void main(String[] args) {
	    JFrame frame = new VisualizeSimulation();

	    frame.setTitle("CSC 411 - Problem Set 04");
	    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    frame.pack();
	    frame.setVisible(true);
    }
}

@SuppressWarnings("serial")
class EnvironmentPanel extends JPanel{
	private Timer timer;
	private Environment env;
	public static final int TILESIZE = 75;
	public static final int DELAY = 500; // milliseconds
	
	// Designs a GUI Panel based on the dimensions of the Environment and implements 
	// a Timer object to run the simulation. This timer will iterate through time-steps
	// with a 500ms delay (or wait 500ms before updating again).
	public EnvironmentPanel(Environment env) {
	    setPreferredSize(new Dimension(env.getCols()*TILESIZE, env.getRows()*TILESIZE));
		this.env = env;
		
		this.timer = new Timer(DELAY, new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					// Wrapped in try/catch in case the Robot's decision results
					// in a crash; we'll treat that the same as Action.DO_NOTHING
					env.updateEnvironment();
				} catch (Exception ex) {
					if (ex instanceof ArrayIndexOutOfBoundsException)
						System.out.println("Agent attempted to use an invalid column, skipping.");
					System.out.println(ex);
				}
				repaint();
				
				// Stop the simulation if status indicates a winner or draw
				Status state = env.getGameStatus();
				switch(state) {
					case DRAW:
						System.out.println("DRAW!");
						timer.stop();
						break;
					case RED_WIN:
						System.out.println("RED WINS!");
						timer.stop();
						break;
					case YELLOW_WIN:
						System.out.println("YELLOW WINS!");
						timer.stop();
						break;
					default:
						// Game is still ongoing
						break;
				}
			}
		});
		this.timer.start();
	}
	
	/*
	 * The paintComponent method draws all of the objects onto the
	 * panel. This is updated at each time step when we call repaint().
	 */
	@Override
	protected void paintComponent(Graphics g) {
		super.paintComponent(g);
		// Paint Environment Tiles
		Position[][] positions = env.clonePositions();
		for (int row = 0; row < positions.length; row++) {
			for (int col = 0; col < positions[row].length; col++) {
				// Paint the background squares
				g.setColor(Properties.SILVER);
		        g.fillRect( col * TILESIZE, 
	                        row * TILESIZE,
	                        TILESIZE, TILESIZE);
		        
		        // Paint the background squares' outlines
		        g.setColor(Properties.BLACK);
	            g.drawRect( col * TILESIZE, 
	                        row * TILESIZE,
	                        TILESIZE, TILESIZE);
	            
	            // Paint Red Ovals
				if(positions[row][col].getStatus() == Status.RED) {
					g.setColor(Properties.RED);
				    g.fillOval(col * TILESIZE+TILESIZE/4, 
				    		    row * TILESIZE+TILESIZE/4,
		    		            TILESIZE/2, TILESIZE/2);
				    g.setColor(Properties.BLACK);
				    g.drawOval(col * TILESIZE+TILESIZE/4, 
			    		    row * TILESIZE+TILESIZE/4,
	    		            TILESIZE/2, TILESIZE/2);
	            } else if(positions[row][col].getStatus() == Status.YELLOW) {
	            	// Paint Yellow Ovals
					g.setColor(Properties.YELLOW);
				    g.fillOval(col * TILESIZE+TILESIZE/4, 
				    		    row * TILESIZE+TILESIZE/4,
		    		            TILESIZE/2, TILESIZE/2);
				    g.setColor(Properties.BLACK);
				    g.drawOval(col * TILESIZE+TILESIZE/4, 
			    		    row * TILESIZE+TILESIZE/4,
	    		            TILESIZE/2, TILESIZE/2);
	            }
			}
	    }
	}
}