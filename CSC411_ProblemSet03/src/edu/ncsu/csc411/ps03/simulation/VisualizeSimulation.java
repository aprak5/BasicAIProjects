package edu.ncsu.csc411.ps03.simulation;

import edu.ncsu.csc411.ps03.environment.Environment;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Arrays;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.Timer;

/**
 * A Visual Guide toward testing whether your robot
 * agent is operating correctly. This visualization
 * will run for 5000 time steps. Unlike PS01 and PS02,
 * this simulation will run through all 5000 iterations
 * before quitting.
 * You are free to modify the environment for testing.
 * @author Adam Gaweda
 */
public class VisualizeSimulation extends JFrame {
	private static final long serialVersionUID = 1L;
	private EnvironmentPanel envPanel;
	private ScorePanel scorePanel;
	private Environment env;
	
	/* Builds the environment; while not necessary for this problem set,
	 * this could be modified to allow for different types of environments.
	 * 
	 * The map variable allows you to customize the environment to any configuration.
	 * Each row in the array represents a value associated to a given task in the 
	 * environment, and each column represents a value associated to a given worker.
	 */
	public VisualizeSimulation() {
		// Currently uses the first public test case
		int[][] map = {
			{23, 17, 13, 30, 13},
			{14, 23, 10, 26, 17},
			{22, 30, 29, 19, 10},
			{19, 11, 28, 12, 22},
			{29, 14, 22, 21, 24},
				
		};
		setResizable(false);
		this.env = new Environment(map);
		envPanel = new EnvironmentPanel(this.env);
		scorePanel = new ScorePanel();
		this.add(envPanel, BorderLayout.CENTER);	
		this.add(scorePanel, BorderLayout.SOUTH);
	}
	
	public static void main(String[] args) {
	    JFrame frame = new VisualizeSimulation();

	    frame.setTitle("CSC 411 - Problem Set 03");
	    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    frame.pack();
	    frame.setVisible(true);
    }
	
	// Inner Class Environment Panel
	@SuppressWarnings("serial")
	class EnvironmentPanel extends JPanel{
		private Environment env;
		private Color[] workerColors;
		private Timer timer;
		public static final int TILESIZE = 75;
		public static final int DELAY = 100; // milliseconds
		private static final int ITERATIONS = 5000;
		
		// Designs a GUI Panel based on the dimensions of the Environment and implements 
		// a Timer object to run the simulation. This timer will iterate through time-steps
		// with a 100ms delay (or wait 100ms before updating again).
		public EnvironmentPanel(Environment env) {
		    setPreferredSize(new Dimension((env.getNumWorkers()+1)*TILESIZE, (env.getNumTasks()+1)*((int)(TILESIZE*1.02))));
			this.env = env;
			// Capped at 15 colors, then visualization will recycle colors
			this.workerColors = new Color[]{Properties.RED, Properties.ORANGE, Properties.GREEN, 
											Properties.BLUE, Properties.INDIGO, Properties.YELLOW, 
											Properties.BROWN, Properties.WHITE, Properties.CONCRETE, 
											Properties.LIGHTRED, Properties.LIGHTORANGE, Properties.LIGHTYELLOW, 
											Properties.LIGHTGREEN, Properties.LIGHTBLUE, Properties.LIGHTINDIGO};
			
			this.timer = new Timer(DELAY, new ActionListener() {
				int timeStepCount = 0;
				public void actionPerformed(ActionEvent e) {
					// Update the Environment
					env.updateConfiguration();
					scorePanel.updateScore();
					// Redraw the Visualization
					repaint();
					// Increment how many steps have been taken
					timeStepCount++;
					
					// 2) The simulation has iterated through the passed number of iterations
					if (timeStepCount == ITERATIONS) {
						String line = "Configuration after %4d iterations:";
						String msg = String.format(line, ITERATIONS);
						String configuration = Arrays.toString(env.getCurrentConfiguration());
						System.out.println(msg);
						System.out.println(configuration);
						System.out.println("Score: " + env.calcScore(env.getCurrentConfiguration()));
						env.writeConfigurationsToFile();
						timer.stop();
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

			// Create Background
			for (int task = 0; task < this.env.getNumTasks()+1; task++) {
				for (int worker = 0; worker < this.env.getNumWorkers()+1; worker++) {
					// Get its respective tile and set the color for the 
					// corresponding status
					g.setColor(Properties.SILVER);
					// Then draw that square, not the row and col are flipped
					// so that the visualization matches the String maps
			        g.fillRect( worker * TILESIZE, 
		                        task * TILESIZE,
		                        TILESIZE, TILESIZE);
			        
			        // Draw an outline to the tile
			        g.setColor(Properties.BLACK);
		            g.drawRect( worker * TILESIZE, 
		            			task * TILESIZE,
		                        TILESIZE, TILESIZE);
				}
		    }
			
			// Paint the Workers
			char face = '\u263A';
			for (int worker = 0; worker < this.env.getNumWorkers(); worker++) {
				// Get its respective tile and set the color for the 
				// corresponding status
				Color selectedColor = this.workerColors[worker % this.workerColors.length];
				g.setColor(selectedColor);
				g.setFont(new Font("Arial", Font.PLAIN, (int)(.75*TILESIZE)));
				// Then draw that square, not the row and col are flipped
				// so that the visualization matches the String maps
				int x = (worker+1) * TILESIZE+TILESIZE/8;
				int y = (int) (TILESIZE/1.5);
		        g.drawString(""+face, x, y );
			}
			
			// Paint the Tasks
			// Using Fruit Emojis for visualization sake, but could be attributed to any task
			// Similar to colors, capped at 15, then visualization will recycle task icons
			String[] tasks = {
					"\ud83c\udf47", // grapes
					"\ud83c\udf49", // watermelon
					"\ud83c\udf4a", // orange
					"\ud83c\udf4c", // banana
					"\ud83c\udf4d", // pineapple
					"\ud83c\udf4e", // apple
					"\ud83c\udf50", // pear
					"\ud83c\udf51", // peach
					"\ud83c\udf52", // cherries
					"\ud83c\udf53", // strawberry
					"\ud83c\udf45", // tomato
					"\ud83e\udd65", // coconut
					"\ud83e\udd51", // avocado
					"\ud83e\udd55", // carrot
					"\ud83e\uddc4", // garlic
			        };
			for (int task = 0; task < this.env.getNumTasks(); task++) {
				// Get its respective icon
				String taskEmoji = tasks[task % tasks.length];
				g.setColor(Properties.BLACK);
				g.setFont(getFont(taskEmoji));
				// Then draw that square, not the row and col are flipped
				// so that the visualization matches the String maps
				int x = TILESIZE/8;
				int y = (int) (((task+1) * TILESIZE) + (TILESIZE* .75));
				g.drawString(""+taskEmoji, x, y );
			}
			
			// Paint the Configurations
			int[] configuration = this.env.getCurrentConfiguration();
			for(int i = 0; i < configuration.length; i++) {
				Color selectedColor = this.workerColors[i % this.workerColors.length];
				Color box = new Color(selectedColor.getRed(), selectedColor.getGreen(), selectedColor.getBlue(), 128);
				g.setColor(box);
				g.fillRect( ((i+1) * TILESIZE)+TILESIZE/5, 
			    			((configuration[i]+1) * TILESIZE)+TILESIZE/5,
				            (int)((TILESIZE/5)*3.3), (int)((TILESIZE/5)*3));
				
				// Draw an outline to the configuration
		        g.setColor(selectedColor);
	            g.drawRect( ((i+1) * TILESIZE)+TILESIZE/5, 
			    			((configuration[i]+1) * TILESIZE)+TILESIZE/5,
				            (int)((TILESIZE/5)*3.3), (int)((TILESIZE/5)*3));
			}
			
			// Add Values to Tiles
			int[][] values = this.env.getValues();
			for (int task = 0; task < this.env.getNumTasks(); task++) {
				for (int worker = 0; worker < this.env.getNumWorkers(); worker++) {
					// Get its respective tile and set the color for the 
					// corresponding status
					g.setColor(Properties.BLACK);
					g.setFont(new Font("Arial", Font.PLAIN, (int)(.5*TILESIZE)));
					// Then draw that square, not the row and col are flipped
					// so that the visualization matches the String maps
					int x = (worker+1) * TILESIZE+TILESIZE/4;
					int y = (int) ((task+1) * TILESIZE+TILESIZE/1.5);
			        g.drawString(""+values[task][worker], x, y );
				}
		    }
		}
		
		// Method from StackOverflow to obtain the correct Emoji Font Family for an OS
		// https://stackoverflow.com/q/64733229/1558159
		// NOTE: Have not tested the GUI on a Mac, YMMV
		public Font getFont(String emoji) {
		    String os = System.getProperty("os.name");
		    String fontFamily = os.equals("Mac OS X") ? "Apple Color Emoji" : "Segoe UI Emoji";
		    Font font = new Font(fontFamily, Font.PLAIN, (int)(.6*TILESIZE));
		    return font;
		  }
	}
	
	// Inner Class Score Panel
	@SuppressWarnings("serial")
	class ScorePanel extends JPanel{
		private JLabel scoreLabel;
		// A small, simple JLabel to will output the currently highlighted configuration's score
		public ScorePanel() {
			this.scoreLabel = new JLabel();
			add(scoreLabel);
		}
		
		public void updateScore() {
			repaint();
		}
		
		/*
		 * The paintComponent method draws all of the objects onto the
		 * panel. This is updated at each time step when we call repaint().
		 */
		@Override
		protected void paintComponent(Graphics g) {
			super.paintComponent(g);
			
			// Update the current score to the Environment's current configuration
			scoreLabel.setText("Current Score: " + env.calcScore(env.getCurrentConfiguration()));
		}
	}
}