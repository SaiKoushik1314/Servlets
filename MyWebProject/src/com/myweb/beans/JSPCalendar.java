package com.myweb.beans;

import java.util.Date;

public class JSPCalendar {
	public String getDay() {
		int i = new Date().getDay();
		String weekday = "";
		switch (i) {
		case 0:
			weekday = "Sunday";
			break;
		case 1:
			weekday = "Monday";
			break;
		case 2:
			weekday = "Tuesday";
			break;
		case 3:
			weekday = "Wednesday";
			break;
		case 4:
			weekday = "Thursday";
			break;
		case 5:
			weekday = "Friday";
			break;
		case 6:
			weekday = "Saturday";
			break;
		}
		return weekday;
	}

	public int getDate() {
		return new Date().getDate();
	}

	public int getMonth() {
		return new Date().getMonth() + 1;
	}

	public int getYear() {
		return new Date().getYear() + 1900;
	}

}
