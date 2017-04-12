package com.bs.fshop.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @title:
 * @descrption: 
 * @team:
 * @className StringHelper.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2017-4-12 上午9:37:58
 * 
 */
public class StringHelper {
	 /**
     * 根据表达式忽略大小写查找是否包含
     *
     * @param text
     * @param regExp
     * @return
     */
    public static boolean containsIgnoreCase(String text, String regExp) {
        Pattern pattern = Pattern.compile(regExp, Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(text);
        return matcher.find();
    }

    /**
     * 忽略大小替换
     *
     * @param text
     * @param regExp
     * @param replacedAs
     * @return
     */
    public static String replaceIgnoreCase(String text, String regExp, String replacedAs) {
        Pattern pattern = Pattern.compile(regExp, Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(text);
        return matcher.replaceAll(replacedAs);
    }

    /**
     * 首字母变小写
     */
    public static String firstCharToLowerCase(String str) {
        Character firstChar = str.charAt(0);
        String tail = str.substring(1);
        str = Character.toLowerCase(firstChar) + tail;
        return str;
    }

    /**
     * 首字母变大写
     */
    public static String firstCharToUpperCase(String str) {
        Character firstChar = str.charAt(0);
        String tail = str.substring(1);
        str = Character.toUpperCase(firstChar) + tail;
        return str;
    }

    /**
     * 字符串为 null 或者为  "" 时返回 true
     */
    public static boolean isBlank(String str) {
        return str == null || "".equals(str.trim()) ? true : false;
    }

    /**
     * 字符串不为 null 而且不为  "" 时返回 true
     */
    public static boolean notBlank(String str) {
        return str == null || "".equals(str.trim()) ? false : true;
    }

    public static boolean notBlank(String... strings) {
        if (strings == null)
            return false;
        for (String str : strings)
            if (str == null || "".equals(str.trim()))
                return false;
        return true;
    }

    public static boolean notNull(Object... paras) {
        if (paras == null)
            return false;
        for (Object obj : paras)
            if (obj == null)
                return false;
        return true;
    }
    
    /**
     * 链接2个字符串，会出去每个字符串前后的空格等符号
     * @description:
     * @author: kChen
     * @createDate: 2014-9-18
     * @param strings
     * @return:
     */
    public static String concat(Object ...objects) throws NullPointerException{
    	StringBuffer buffer = new StringBuffer("");
    	for(Object string : objects){
    		buffer.append(string.toString().trim());
    	}
    	return buffer.toString();
    }

    /**
     * 链接2个字符串，
     * @description:
     * @author: kChen
     * @createDate: 2014-9-18
     * @param strings
     * @return:
     */
    public static String concatNoTrim(Object ...objects) throws NullPointerException{
    	StringBuffer buffer = new StringBuffer("");
    	for(Object string : objects){
    		buffer.append(string.toString());
    	}
    	return buffer.toString();
    }
    
    /**
     * 获得文件的后缀名
     *
     * @param s
     * @param split
     * @return
     */
    public static String getExtName(String s, char split) {
        int i = s.indexOf(split);
        int length = s.length();
        return (i > 0 ? (i + 1) == length ? null : s.substring(i, s.length()) : null);
    }

    /**
     * 判断是否是数字
     *
     * @param str
     * @return
     * @deprecated 使用GenericValidator.isInt()
     */
    public static boolean isInt(String str) {
        if (str == null || "".equals(str.trim())) return false;
        try {
            Integer.parseInt(str);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public static String addSlashes(String s){
        if(s == null){
            return s;
        }
        s = s.replaceAll("\\\\", "\\\\\\\\");
        s = s.replaceAll("\\n", "\\\\n");
        s = s.replaceAll("\\r", "\\\\r");
        s = s.replaceAll("\\00", "\\\\0");
        return s;
    }
    /**
     * 对SQL敏感的字符自动转义，用于手拼SQL的搜索
     * @param s
     * @return
     */
    public static String addSlashesLikeOra(String s){
        if(s == null){
            return s;
        }
        s = addSlashes(s);
        s = s.replaceAll("%", "\\\\%");
        s = s.replaceAll("_", "\\\\_");
        s = s.replaceAll("'", "''");
        return s;
    }
}
