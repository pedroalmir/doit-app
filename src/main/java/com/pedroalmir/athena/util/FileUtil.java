package com.pedroalmir.athena.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;

import br.com.caelum.vraptor.ioc.Component;

@Component
public class FileUtil {

	/**
	 * Plugins directory
	 */
	private static final String PLUGINS_DIR = "plugins";
	/**
	 * Root directory
	 */
	private static final String ROOT_DIR = "/";

	/**
	 * Request
	 */
	private HttpServletRequest request;

	/**
	 * Default constructor
	 * 
	 * @param request
	 */
	public FileUtil(HttpServletRequest request) {
		this.request = request;
	}
	
	/**
	 * @param directory
	 * @return list of jar
	 */
	public File[] findAllJAR(String directory){
    	File dir =  new File(directory);
    	return dir.listFiles(new FilenameFilter() {
			
			@Override
			public boolean accept(File dir, String name) {
				return name.endsWith(".jar");
			}
		});
    }

	/**
	 * Save test file
	 * 
	 * @param projectName
	 * @param fileName
	 * @param file
	 * @return the path from saved file
	 */
	public String savePluginFile(String fileName, InputStream file) {
		File dirfile = new File(getRealPath(PLUGINS_DIR));
		dirfile.mkdirs();
		return createFile(fileName, dirfile.getAbsolutePath(), file);
	}
	
	/**
	 * Create file
	 * 
	 * @param fileName
	 * @param dir
	 * @param fileStream
	 * @return the file path
	 */
	private String createFile(String fileName, String dir, InputStream fileStream) {

		File directory = new File(dir);
		directory.mkdirs();

		ByteArrayOutputStream bos = null;

		try {
			bos = new ByteArrayOutputStream();
			IOUtils.copy(fileStream, bos);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				bos.close();
				fileStream.close();
			} catch (IOException ignored) {
			}
		}

		byte[] byteArray = bos.toByteArray();

		FileOutputStream fos = null;

		if (byteArray == null) {
			throw new RuntimeException("Byte Array Nulo");
		}

		File file = new File(directory, fileName);

		try {
			fos = new FileOutputStream(file);
			fos.write(byteArray);
			fos.flush();
			fos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return file.getAbsolutePath();

	}
	
	/**
	 * Get real path
	 * 
	 * @param dir
	 * @return the path
	 */
	public String getRealPath(String dir) {
		return request.getSession().getServletContext().getRealPath(dir);
	}

	/**
	 * The real root path
	 * @return the path
	 */
	public String getRealRootPath() {
		try{
			return request.getSession().getServletContext().getRealPath(ROOT_DIR);
		} catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * The real plugins path
	 * @return the path
	 */
	public String getRealPluginsPath() {
		try{
			return request.getSession().getServletContext().getRealPath(PLUGINS_DIR);
		} catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
}
