/**
 * 
 */
package com.pedroalmir.athena.log;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Pedro Almir
 * 
 */
public class LoggingUtil {

	private static Pattern p = Pattern.compile("[{][\\d]+[}]");
	private static String NULL = "NULL";

	public static String addParamentersToMessage(String msg, Object[] params) {
		if (params == null || msg == null || msg.isEmpty()) {
			return msg;
		}

		StringBuilder sb = new StringBuilder(msg.length());

		Matcher m = p.matcher(msg);
		int parmIndex;
		String g;
		int lastAddedIndex = 0;

		// Look for {\d} matches and replace them with the parameter with that index, if exists.
		while (m.find()) {
			g = m.group();
			parmIndex = new Integer(g.substring(1, g.length() - 1));

			sb.append(msg.subSequence(lastAddedIndex, m.start()));
			if (parmIndex >= 0 && parmIndex < params.length) {
				if (params[parmIndex] != null) {
					sb.append(params[parmIndex].toString());
				} else {
					sb.append(NULL);
				}
			} else {
				sb.append(g);
			}
			lastAddedIndex = m.end();
		}

		// Adds if something remained unmatched
		if (lastAddedIndex != msg.length()) {
			sb.append(msg.substring(lastAddedIndex));
		}

		return sb.toString();
	}

}
