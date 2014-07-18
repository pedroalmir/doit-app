/**
 * 
 */
package com.pedroalmir.athena.util;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import org.apache.xbean.finder.ResourceFinder;

import com.pedroalmir.athena.session.InfoSession;
import com.pedroalmir.plugin.api.ApplicationPlugin;

/**
 * @author Pedro Almir
 *
 */
public class ResourceUtil {
	/**
	 * @return list of plugins
	 */
	public static List<ApplicationPlugin> loadAllPlugins() {
		List<ApplicationPlugin> plugins = new LinkedList<ApplicationPlugin>();
		
		try {
			ResourceFinder finder = new ResourceFinder("META-INF/services/", 
					InfoSession.getJarFileLoader(Thread.currentThread().getContextClassLoader()));
			
			List<Class<? extends ApplicationPlugin>> impls = finder.findAllImplementations(ApplicationPlugin.class);
			
			if(impls != null && !impls.isEmpty()){
				for(Class<? extends ApplicationPlugin> klass : impls)
					plugins.add(klass.newInstance());
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		
		return plugins;
	}
}
