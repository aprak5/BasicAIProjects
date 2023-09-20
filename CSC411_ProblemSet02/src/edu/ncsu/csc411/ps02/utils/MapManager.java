package edu.ncsu.csc411.ps02.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class MapManager {

	public MapManager() {}
	
	public static String[] loadMap(String filename) {
		ArrayList<String> map = new ArrayList<String>();
		try {
			File fi = new File(filename);
			Scanner fiReader = new Scanner(fi);
			while (fiReader.hasNextLine()) {
		        String line = fiReader.nextLine();
		        map.add(line);
		      }
			fiReader.close();
		} catch (FileNotFoundException fnf) {
			String errorMsg = "%s is not a valid filename\n";
			System.out.printf(errorMsg, filename);
			fnf.printStackTrace();
		}
		
		return map.toArray(new String[0]);
	}

}
