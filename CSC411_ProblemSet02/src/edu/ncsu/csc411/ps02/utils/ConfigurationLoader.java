package edu.ncsu.csc411.ps02.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ConfigurationLoader {

	public ConfigurationLoader() {}
	
	public static Properties loadConfiguration(String filename) {
		Properties properties = new Properties();
		
		try {
			FileInputStream propsInput = new FileInputStream(filename);
			properties.load(propsInput);
		} catch (FileNotFoundException fnf) {
			String errorMsg = "%s is not a valid filename\n";
			System.out.printf(errorMsg, filename);
			fnf.printStackTrace();
			System.exit(0);
		} catch (IOException ioe) {
			String errorMsg = "An error occurred when attempting to load %s\n";
			System.out.printf(errorMsg, filename);
			ioe.printStackTrace();
			System.exit(0);
		}
		
		return properties;
	}

}
