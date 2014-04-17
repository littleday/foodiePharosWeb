package myutil;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

	/*
	 * Return true if Date1 is after date2, comparing only the date part
	 */
	public static Boolean dateAfter(Date date1, Date date2) {

		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date newDate1 = sdf.parse(sdf.format(date1));
			Date newDate2 = sdf.parse(sdf.format(date2));
			return newDate1.after(newDate2);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/*
	 * Return true if date1 is at least 1 hour after date2
	 */
	public static Boolean oneHourAfter(Date date1, Date date2){
		Calendar cal = Calendar.getInstance();
		cal.setTime(date2);
		cal.add(Calendar.HOUR, 1);
		
		Date date2PlusOneHour = cal.getTime();
		return date1.after(date2PlusOneHour);
	}

}
