package com.medxplore.utils;

import java.io.PrintWriter;
import java.io.StringWriter;

public interface CommonUtils {
	public static String convertPrintStackTraceToString(Exception e) {
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		e.printStackTrace(pw);
		String result = sw.toString();
		return result;
	}
}
