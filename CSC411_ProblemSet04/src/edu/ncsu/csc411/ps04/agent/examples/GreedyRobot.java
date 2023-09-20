package edu.ncsu.csc411.ps04.agent.examples;

import java.util.ArrayList;
import java.util.PriorityQueue;

import edu.ncsu.csc411.ps04.agent.Robot;
import edu.ncsu.csc411.ps04.environment.Environment;
import edu.ncsu.csc411.ps04.environment.Position;
import edu.ncsu.csc411.ps04.environment.Status;

public class GreedyRobot extends Robot {
	private PriorityQueue<ChoiceNode> choices;

	public GreedyRobot(Environment env) {
		super(env);
	}
	
	public int countAdjacentTiles(Position[][] positions) {
		int adjacentCount = 0;
		Status myStatus = super.getRole();
		for(int row = 0; row < positions.length; row++) {
			for(int col = 0; col < positions[row].length; col++) {
				Status tileStatus = positions[row][col].getStatus();
				if (myStatus == tileStatus) {
					int[] rows = {-1,0,1};
					int[] cols = {-1,0,1};
					for(int bufferRow : rows) {
						for(int bufferCol : cols) {
							int newRow = row+bufferRow;
							int newCol = col+bufferCol;
							if(newRow < 0 || newRow > positions.length-1) {} // ignore
							else if(newCol < 0 || newCol > positions[row].length-1) {} // ignore
							else if(bufferRow == 0 && bufferCol == 0) {} // ignore
							else {
								Status neighborStatus = positions[newRow][newCol].getStatus();
								if (tileStatus == neighborStatus) {
									adjacentCount++;
								}
							}
						}
					}
				}
			}
		}
		return adjacentCount;
	}

	@Override
	public int getAction() {
		this.choices = new PriorityQueue<ChoiceNode>();
		ArrayList<Integer> options = super.env.getValidActions();
		for(int i = 0; i < options.size(); i++) {
			int col = options.get(i);
			Position[][] perception = super.perceive(col, super.env.clonePositions(), super.role);
			int count = countAdjacentTiles(perception);
			choices.add(new ChoiceNode(col, count));
		}
		ChoiceNode finalChoice = choices.poll();
		return finalChoice.getCol();
	}

	class ChoiceNode implements Comparable<ChoiceNode>{
		private int col, priority;
		public ChoiceNode(int col, int priority) {
			this.col = col;
			this.priority = priority;
		}
		
		public int getCol() {
			return this.col;
		}

		@Override
		public int compareTo(ChoiceNode other) {
			return other.priority - this.priority;
		}
	}
}
