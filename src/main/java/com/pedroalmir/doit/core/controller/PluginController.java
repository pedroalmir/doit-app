/**
 * 
 */
package com.pedroalmir.doit.core.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;

import com.google.gson.Gson;
import com.pedroalmir.doit.common.session.InfoSession;
import com.pedroalmir.doit.common.util.FileUtil;
import com.pedroalmir.doit.core.model.BundleModel;
import com.pedroalmir.doit.core.model.SearchEngineExecutionModel;

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
	public PluginController(Result result, FileUtil fileUtil) {
		this.result = result;
		this.fileUtil = fileUtil;
	}
	
	@Path("/plugin")
	public void index() {
		
	}

	@Path("/plugin/new")
	public void create() {

	}
	
	@Path("/plugin/execute")
	public void executeSearchEngine(String json){
		System.out.println(new Gson().fromJson(json, SearchEngineExecutionModel.class).toString());
		result.redirectTo(IndexController.class).index();
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
	public void save(String pluginName, String pluginDescription, UploadedFile pluginFile) {
		if (pluginFile != null) {
			/* Save the plugin file */
			String pluginPath = fileUtil.savePluginFile(pluginFile.getFileName(), pluginFile.getFile());
			System.out.println("Plugin: " + pluginName + " saved in " + pluginPath);
		}
		result.redirectTo(IndexController.class).index();
	}

}
