package com.hrs.mediarequesttool.common;

public class Constants {
	public final static String DATE_FORMAT = "yyyy-MM-dd";
	public final static String DATETIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
	public final static int MAX_LENGTH_COMMENT = 255;
	
	public final static String STATUS_NEW = "NEW";
	public final static String STATUS_CONFIRMING = "CONFIRMING";
	public final static String STATUS_OK = "OK";
	public final static String STATUS_NG = "NG";
	public final static String STATUS_DELETED = "DELETED";
	public final static String STATUS_PROCESSING = "PROCESSING";
	public final static String STATUS_FINISHED = "FINISHED";
	public final static String STATUS_DESTROYED = "DESTROYED";
	
	public final static String[] NEXT_CONFIRMING = {"OK", "NG"};
	public final static String[] NEXT_NG = {"CONFIRMING", "DELETED"};
	
	public final static int MAX_LENGTH_ASSIGNED_PERSON = 100;
	public final static int USER_ROLE_OF_DIRECTOR = 1;
	
	public final static String weban_media_id = "weban";
	public final static String anGWS_media_name = "an GWS";
	public final static String anGWS_login_id_1 = "利用者ID";
	public final static String anGWS_login_id_2 = "ユーザーID";
	public final static String anGWS_login_password_1 = "パスワード";
	public final static String anGWS_login_password_2 = "応募管理者用パスワード";
}
