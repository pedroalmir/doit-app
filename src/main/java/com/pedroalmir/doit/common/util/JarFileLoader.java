/**
 * 
 */
package com.pedroalmir.doit.common.util;

import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/**
 * @author Pedro Almir
 * 
 */
public class JarFileLoader extends URLClassLoader {
	
	private HashMap<Integer, Object[]> constantVals;
	private HashMap<String, byte[]> map;
	private List<URL> urls;

	private static final URL[] EMPTY_URLS = new URL[] {};
	
	/**
	 * @param urls
	 * @param parent
	 */
	public JarFileLoader(URL[] urls, ClassLoader parent) {
		super(urls, parent);
		this.constantVals = new HashMap<Integer, Object[]>();
		this.map = new HashMap<String, byte[]>();
		this.urls = new LinkedList<URL>();
	}

	/**
	 * @param urls
	 */
	public JarFileLoader(URL[] urls) {
		super(urls, Thread.currentThread().getContextClassLoader());
		this.constantVals = new HashMap<Integer, Object[]>();
		this.map = new HashMap<String, byte[]>();
		this.urls = new LinkedList<URL>();
	}

	/**
	 * @param urls
	 * @param parent
	 */
	public JarFileLoader(ClassLoader parent) {
		super(EMPTY_URLS, parent);
		this.constantVals = new HashMap<Integer, Object[]>();
		this.map = new HashMap<String, byte[]>();
		this.urls = new LinkedList<URL>();
	}

	/**
	 * @param name
	 * @param bytes
	 * @return class
	 */
	@SuppressWarnings("rawtypes")
	public Class defineClass(String name, byte[] bytes) {
		return defineClass(name, bytes, 0, bytes.length);
	}

	/**
	 * @param className
	 * @param bytes
	 */
	public void addBytecode(String className, byte[] bytes) {
		if (map.containsKey(className))
			throw new IllegalStateException(String.format("Class %s already present", className));
		map.put(className, bytes);
	}

	/* (non-Javadoc)
	 * @see java.net.URLClassLoader#findClass(java.lang.String)
	 */
	protected Class<?> findClass(String name) throws ClassNotFoundException {
		byte[] bytes = map.get(name);
		if (bytes != null)
			return defineClass(name, bytes, 0, bytes.length);
		return super.findClass(name);
		// throw new ClassNotFoundException(name);
	}

	/**
	 * @param id
	 * @param val
	 */
	public void registerConstants(int id, Object[] val) {
		constantVals.put(id, val);
	}

	/**
	 * @param id
	 * @return
	 */
	public Object[] getConstants(int id) {
		return constantVals.get(id);
	}

	/* (non-Javadoc)
	 * @see java.net.URLClassLoader#addURL(java.net.URL)
	 */
	public void addURL(URL url) {
		urls.add(url);
		super.addURL(url);
	}

	/**
	 * @param path
	 * @throws MalformedURLException
	 */
	public void addJAR(String path) throws MalformedURLException {
		String urlPath = "jar:file:/" + path + "!/";
		URL url = new URL(urlPath);
		urls.add(url);
		super.addURL(url);
	}

	/**
	 * @return the constantVals
	 */
	public HashMap<Integer, Object[]> getConstantVals() {
		return constantVals;
	}

	/**
	 * @param constantVals the constantVals to set
	 */
	public void setConstantVals(HashMap<Integer, Object[]> constantVals) {
		this.constantVals = constantVals;
	}

	/**
	 * @return the map
	 */
	public HashMap<String, byte[]> getMap() {
		return map;
	}

	/**
	 * @param map the map to set
	 */
	public void setMap(HashMap<String, byte[]> map) {
		this.map = map;
	}

	/**
	 * @return the urls
	 */
	public List<URL> getUrls() {
		return urls;
	}

	/**
	 * @param urls the urls to set
	 */
	public void setUrls(List<URL> urls) {
		this.urls = urls;
	}

}
