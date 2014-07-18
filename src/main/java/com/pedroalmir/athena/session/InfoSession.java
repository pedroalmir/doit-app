/**
 * 
 */
package com.pedroalmir.athena.session;

import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

import br.com.caelum.vraptor.ioc.ApplicationScoped;
import br.com.caelum.vraptor.ioc.Component;

import com.pedroalmir.athena.core.PluginService;
import com.pedroalmir.athena.core.PluginServiceFactory;
import com.pedroalmir.athena.core.StandardPluginService;
import com.pedroalmir.athena.model.BundleModel;
import com.pedroalmir.athena.util.JarFileLoader;

/**
 * @author Pedro Almir
 *
 */
@Component
@ApplicationScoped
public class InfoSession{
	/**
	 * 
	 */
	private static JarFileLoader jarLoader;
	private static PluginService pluginService;
	private static List<BundleModel> bundles;
	
	/**
	 * @param loader
	 * @return
	 */
	public static JarFileLoader getJarFileLoader(ClassLoader loader) {
		if (jarLoader == null) {
			jarLoader = new JarFileLoader(loader);
		}
		return jarLoader;
	}
	
	/**
	 * @param path
	 * @return
	 */
	public static PluginService getPluginService(String path){
		if(pluginService == null){
			return PluginServiceFactory.createPluginService(path, InfoSession.getJarFileLoader(Thread.currentThread().getContextClassLoader()));
		}
		// Reload service loader
		((StandardPluginService) pluginService).reloadServiceLoader();
		return pluginService;
	}
	
	/**
	 * add new bundle
	 */
	public static void addNewBundle(BundleModel bundle){
		if(bundles == null){
			bundles = new LinkedList<BundleModel>();
		}
		if(!bundles.contains(bundle))
			bundles.add(bundle);
	}
	
	/**
	 * @param uniqueKey
	 * @return bundle model that contains this unique key
	 */
	public static BundleModel findByUUID(UUID uniqueKey){
		if(bundles != null){
			for(BundleModel model : bundles){
				if(model.getUniqueKey().equals(uniqueKey))
					return model;
			}
		}
		return null;
	}
	
	/**
	 * @param uniqueKey
	 * @return bundle model that contains this unique key
	 */
	public static BundleModel findByUUID(String uniqueKey){
		
		if(bundles != null){
			for(BundleModel model : bundles){
				if(model.getUniqueKey().equals(UUID.fromString(uniqueKey.trim())))
					return model;
			}
		}
		return null;
	}

	/**
	 * @return the bundles
	 */
	public static List<BundleModel> getBundles() {
		return bundles;
	}

	/**
	 * @param bundles the bundles to set
	 */
	public static void setBundles(List<BundleModel> bundles) {
		InfoSession.bundles = bundles;
	}

}
