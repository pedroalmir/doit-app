/**
 * 
 */
package com.pedroalmir.doit.core.osgi;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.pedroalmir.doit.common.util.ClasspathUtils;

/**
 * @author Pedro Almir
 * 
 */
public class PluginServiceFactory {
	
	/**
	 * @return pluginService instance
	 */
	public static PluginService createPluginService(String directory, ClassLoader loader) {
		addPluginJarsToClasspath(directory);
		return StandardPluginService.getInstance(loader);
	}

	/**
	 * 
	 */
	private static void addPluginJarsToClasspath(String directory) {
		try {
			/* add the plugin directory to classpath */
			ClasspathUtils.addDirToClasspath(new File(directory));
		} catch (IOException ex) {
			Logger.getLogger(PluginServiceFactory.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}
