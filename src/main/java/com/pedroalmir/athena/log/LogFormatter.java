/**
 * 
 */
package com.pedroalmir.athena.log;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Formatter;
import java.util.logging.LogRecord;

/**
 * Output: plugin-api - 03/05/2013 02:30:45,180 [DEBUG] [SourceClassName] [SourceMethodName] - Message
 * @author Pedro Almir
 *
 */
public class LogFormatter extends Formatter {
	
	private static char start = '[';
    private static char end = ']';
    private static char separator	= ' ';
    private static String dateFormat	= "dd/MM/yyyy HH:mm:ss:SSS";

	@Override
	public String format(LogRecord record) {
		StringBuilder sb = new StringBuilder();
		/* Killline - 03/05/2013 02:30:45,180 */
		sb.append("plugin-api - ");
		SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
		sb.append(sdf.format(new Date(record.getMillis())));
		/* [DEBUG] */
		sb.append(separator);
		sb.append(start);
		sb.append(record.getLevel());
		sb.append(end);
		sb.append(separator);
		/* [SourceClassName] */
		sb.append(start);
		sb.append(record.getSourceClassName());
		sb.append(end);
		sb.append(separator);
		/* [SourceMethodName] */
		sb.append(start);
		sb.append(record.getSourceMethodName());
		sb.append(end);
		sb.append(separator);
		/* - */
		sb.append("- ");
		/* Message */
		sb.append(LoggingUtil.addParamentersToMessage(record.getMessage(), record.getParameters()));
		sb.append(System.getProperty("line.separator"));
		return sb.toString();
	}

}
