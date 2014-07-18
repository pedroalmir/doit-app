/**
 * 
 */
package com.pedroalmir.doit.common.log;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.StreamHandler;

/**
 * @author Pedro Almir
 * 
 */
public class LoggingHandler extends StreamHandler {

	/**
	 * Killline logging formatter
	 */
	private LogFormatter formatter = new LogFormatter();

	/*
	 * (non-Javadoc)
	 * @see java.util.logging.StreamHandler#publish(java.util.logging.LogRecord)
	 */
	public void publish(LogRecord record) {
		if (record.getLevel().intValue() < Level.WARNING.intValue()) {
			System.out.print(formatter.format(record));
		} else {
			System.err.print(formatter.format(record));
		}
	}
}
