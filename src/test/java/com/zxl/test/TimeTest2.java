package com.zxl.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.zxl.util.MTimeUtil;

public class TimeTest2 {

	public static void main(String[] args) {
		Date date = new Date();
		System.out.println(date);
		String str = MTimeUtil.timeFormat(date);
		System.out.println(str);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str2 = sdf.format(date);
		System.out.println(str2);
	}
}
