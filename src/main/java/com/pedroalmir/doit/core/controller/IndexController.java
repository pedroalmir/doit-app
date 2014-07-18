/**
 * 
 */
package com.pedroalmir.doit.core.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import com.pedroalmir.doit.common.session.InfoSession;
import com.pedroalmir.doit.common.util.FileUtil;
import com.pedroalmir.doit.common.util.ResourceUtil;
import com.pedroalmir.doit.core.model.BundleModel;
import com.pedroalmir.plugin.api.ApplicationPlugin;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

/**
 * @author Pedro Almir
 *
 */
@Resource
public class IndexController {
	
	private final Result result;
	private final FileUtil fileUtil;
	
	/**
	 * @param result
	 * @param fileUtil
	 */
	public IndexController(Result result, FileUtil fileUtil) {
		this.result = result;
		this.fileUtil = fileUtil;
	}
	
	/**
	 * 
	 */
	@Path("/")
	public void index(){
		try {
			/* find all JARs from plugins folder */
			File[] jars = fileUtil.findAllJAR(fileUtil.getRealPluginsPath());
			/* load all JARs from plugins folder */
			for(int i = 0; i < jars.length; i++){
				InfoSession.getJarFileLoader(Thread.currentThread().getContextClassLoader()).addJAR(jars[i].getAbsolutePath());
			}
			
		} catch (Exception ex) {
			System.out.println("Failed.");
			ex.printStackTrace();
		}
		
		List<ApplicationPlugin> allPlugins = ResourceUtil.loadAllPlugins();
		
		for(ApplicationPlugin plugin : allPlugins){
			InfoSession.addNewBundle(new BundleModel(
					InfoSession.getBundles() == null ? 1 : InfoSession.getBundles().size() + 1, 
							UUID.randomUUID(), plugin.getName(), plugin));
		}
		
		result.include("plugins", InfoSession.getBundles());
	}
}
