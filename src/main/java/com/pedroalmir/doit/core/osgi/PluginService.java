/**
 * 
 */
package com.pedroalmir.doit.core.osgi;

import java.util.Iterator;

import com.pedroalmir.plugin.api.ApplicationPlugin;

/**
 * @author Pedro Almir
 *
 */
public interface PluginService {
	/**
	 * @return
	 */
	Iterator<ApplicationPlugin> getPlugins();
    /**
     * 
     */
    void initPlugins();
}
