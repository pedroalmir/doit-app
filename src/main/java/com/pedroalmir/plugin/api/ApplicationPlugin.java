/**
 * 
 */
package com.pedroalmir.plugin.api;

/**
 * @author Pedro Almir
 *
 */
public interface ApplicationPlugin {
	/**
	 * @return plugin name
	 */
	String getName();
	/**
	 * 
	 */
	void init();
	/**
	 * Execute plugin
	 */
	String execute();
}
