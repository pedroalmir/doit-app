/**
 * 
 */
package com.pedroalmir.athena.core;

import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.logging.Logger;

import com.pedroalmir.plugin.api.ApplicationPlugin;

/**
 * @author Pedro Almir
 * 
 */
public class StandardPluginService implements PluginService {
	/**
	 * 
	 */
	private static StandardPluginService pluginService;
	/**
	 * 
	 */
	private ServiceLoader<ApplicationPlugin> serviceLoader;
	/**
	 * 
	 */
	private Logger logger = Logger.getLogger(getClass().getName());

	/**
	 * Default constructor
	 */
	private StandardPluginService(ClassLoader loader) {
		/* Load all the classes in the classpath that have implemented the interface */
		serviceLoader = ServiceLoader.load(ApplicationPlugin.class, loader);
	}

	/**
	 * getInstance with singleton pattern
	 * 
	 * @return
	 */
	public static StandardPluginService getInstance(ClassLoader loader) {
		if (pluginService == null) {
			pluginService = new StandardPluginService(loader);
		}
		return pluginService;
	}

	/**
	 * Clear this loader's provider cache so that all providers will be reloaded. 
	 * After invoking this method, subsequent invocations of the iterator method 
	 * will lazily look up and instantiate providers from scratch, just as is done by a newly-created loader.
	 * 
	 * This method is intended for use in situations in which new providers can be installed into a running 
	 * Java virtual machine
	 */
	public void reloadServiceLoader() {
		this.serviceLoader.reload();
	}

	/* (non-Javadoc)
	 * @see com.pedroalmir.athena.core.PluginService#getPlugins()
	 */
	public Iterator<ApplicationPlugin> getPlugins() {
		return serviceLoader.iterator();
	}

	/* (non-Javadoc)
	 * @see com.pedroalmir.athena.core.PluginService#initPlugins()
	 */
	public void initPlugins() {
		Iterator<ApplicationPlugin> iterator = getPlugins();
		if (!iterator.hasNext()) {
			logger.info("No plugins were found!");
		}
		while (iterator.hasNext()) {
			ApplicationPlugin plugin = iterator.next();
			logger.info("Initializing the plugin " + plugin.getName());
			plugin.init();
		}
	}
}
