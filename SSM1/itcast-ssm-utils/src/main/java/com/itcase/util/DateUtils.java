package com.itcase.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

public class DateUtils {

    public static  String date_String(Date date,String patt){
        SimpleDateFormat sdf=new SimpleDateFormat(patt);
        String format=sdf.format(date);
        return format;
    }

    public static Date string_Date(String str,String patt) throws ParseException {
        SimpleDateFormat sdf=new SimpleDateFormat(patt);
        Date parse=sdf.parse(str);
        return parse;
    }
}
