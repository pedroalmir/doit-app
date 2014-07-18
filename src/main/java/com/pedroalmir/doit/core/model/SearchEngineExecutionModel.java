/**
 * 
 */
package com.pedroalmir.doit.core.model;

import java.util.Arrays;

/**
 * @author Pedro Almir
 *
 */
public class SearchEngineExecutionModel {
	
	private String search;
	private String[] searchEngines;
	private String start;
	private String end;
	
	/**
	 * Default constructor
	 */
	public SearchEngineExecutionModel() {
		
	}
	
	/**
	 * @return the search
	 */
	public String getSearch() {
		return search;
	}
	/**
	 * @param search the search to set
	 */
	public void setSearch(String search) {
		this.search = search;
	}
	/**
	 * @return the searchEngines
	 */
	public String[] getSearchEngines() {
		return searchEngines;
	}
	/**
	 * @param searchEngines the searchEngines to set
	 */
	public void setSearchEngines(String[] searchEngines) {
		this.searchEngines = searchEngines;
	}
	/**
	 * @return the start
	 */
	public String getStart() {
		return start;
	}
	/**
	 * @param start the start to set
	 */
	public void setStart(String start) {
		this.start = start;
	}
	/**
	 * @return the end
	 */
	public String getEnd() {
		return end;
	}
	/**
	 * @param end the end to set
	 */
	public void setEnd(String end) {
		this.end = end;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "SearchEngineExecutionModel [search=" + search
				+ ", searchEngines=" + Arrays.toString(searchEngines)
				+ ", start=" + start + ", end=" + end + "]";
	}
}
