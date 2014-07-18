/**
 * 
 */
package com.pedroalmir.athena.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;

import com.pedroalmir.athena.model.BundleModel;
import com.pedroalmir.athena.session.InfoSession;
import com.pedroalmir.athena.util.FileUtil;
import com.pedroalmir.athena.util.ResourceUtil;
import com.pedroalmir.plugin.api.ApplicationPlugin;

/**
 * @author Pedro Almir
 * 
 */
@Resource
public class PluginController {

	private final Result result;
	private final FileUtil fileUtil;

	/**
	 * Constructor
	 * 
	 * @param result
	 */
	public PluginController(Result result, FileUtil fileUtil, InfoSession infoSession) {
		this.result = result;
		this.fileUtil = fileUtil;
	}
	
	@Path("/plugin")
	public void index() {
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

	@Path("/plugin/new")
	public void create() {

	}
	
	@Path("/plugin/execute/{uniqueKey}")
	public void execute(String uniqueKey){
		BundleModel bundleModel = InfoSession.findByUUID(uniqueKey);
		
		if(bundleModel != null){
			result.include("resultOfExecution", bundleModel.getPlugin().execute());
		}else{
			result.include("resultOfExecution", null);
		}
		
		result.redirectTo(PluginController.class).index();
	}

	@Post
	@Path("/plugin/save")
	public void save(String pluginName, UploadedFile pluginFile) {
		if (pluginFile != null) {
			/* Save the plugin file */
			String pluginPath = fileUtil.savePluginFile(pluginFile.getFileName(), pluginFile.getFile());
			System.out.println("Plugin: " + pluginName + " saved in " + pluginPath);
			
		}
		result.redirectTo(PluginController.class).index();
	}

}
