/**
 * 
 */
package com.pedroalmir.doit.core.model;

import java.util.UUID;

import com.pedroalmir.plugin.api.ApplicationPlugin;

/**
 * @author Pedro Almir
 *
 */
public class BundleModel {
	
	private int id;
	private UUID uniqueKey;
	private String bundleName;
	private ApplicationPlugin plugin;
	
	/**
	 * @param uniqueKey
	 * @param bundleName
	 * @param klass
	 */
	public BundleModel(int id, UUID uniqueKey, String bundleName,
			ApplicationPlugin plugin) {
		super();
		this.id = id;
		this.uniqueKey = uniqueKey;
		this.bundleName = bundleName;
		this.plugin = plugin;
	}
	/**
	 * @return the uniqueKey
	 */
	public UUID getUniqueKey() {
		return uniqueKey;
	}
	/**
	 * @param uniqueKey the uniqueKey to set
	 */
	public void setUniqueKey(UUID uniqueKey) {
		this.uniqueKey = uniqueKey;
	}
	/**
	 * @return the bundleName
	 */
	public String getBundleName() {
		return bundleName;
	}
	/**
	 * @param bundleName the bundleName to set
	 */
	public void setBundleName(String bundleName) {
		this.bundleName = bundleName;
	}
	/**
	 * @return the plugin
	 */
	public ApplicationPlugin getPlugin() {
		return plugin;
	}
	/**
	 * @param plugin the plugin to set
	 */
	public void setPlugin(ApplicationPlugin plugin) {
		this.plugin = plugin;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((bundleName == null) ? 0 : bundleName.hashCode());
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BundleModel other = (BundleModel) obj;
		if (bundleName == null) {
			if (other.bundleName != null)
				return false;
		} else if (!bundleName.equals(other.bundleName))
			return false;
		return true;
	}
}
