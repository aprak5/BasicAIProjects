package edu.ncsu.csc411.ps04.environment;

/**
 * A simple object representing the Tiles in the
 * environment.
 * DO NOT MODIFY.
 * @author Adam Gaweda
 */
public class Tile {
	private Status status;
	
	public Tile(Status status) {
		this.status = status;
	}
	
	public Status getStatus() { return status; }
	
	@Override
	public String toString() {
		return "Tile [status=" + status + "]";
	}
}
