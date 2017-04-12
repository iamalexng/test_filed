package com.bs.fshop.utils;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

/**
 * @title: 比较两个bean的差异
 * @description: {desc}
 * @company: gdyd
 * @className: BeanDiffUtil.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2017-4-12 上午9:31:23
 * @version: 1.0
 */
public class BeanDiffUtil {

    private static Logger log = Logger.getLogger( BeanDiffUtil.class );

    /**
     * @description:对比两个对象之间的差异
     * @author: 吴圣(890160)
     * @createDate: 2015年8月19日
     * @param beforeBean --传入before对象
     * @param afterBean ---传入after对象
     * @returnMap<String, Object> --返回Map< field,"before_Value --> after_value">
     * @throws Exception:
     */
    public static Map<String, Object> diffBean(Object beforeBean, Object afterBean ) throws Exception {
        return diffBean( beforeBean, afterBean, null );
    }
    
    /**
     * @description:对比两个对象之间的差异
     * @author: 吴圣(890160)
     * @createDate: 2015年8月19日
     * @param beforeBean --传入before对象
     * @param afterBean ---传入after对象
     * @param excludeFields --不需要比较字段 用","分隔（null/"" --值没有排除字段）
     * @returnMap<String, Object> --返回Map< field,"before_Value --> after_value">
     * @throws Exception:
     */
    public static Map<String, Object> diffBean(Object beforeBean, Object afterBean, String excludeFields ) throws Exception {

        log.debug( beforeBean.getClass() + " --- 传入前后的CLAZZ --- " + afterBean.getClass() );
        log.debug( "[BeanDiffUtil-diffBean] excludeFields = " + excludeFields );
    	
        if ( !beforeBean.getClass().isInstance( afterBean ) ) {
            log.warn( "[BeanDiffUtil-diffBean]传入前后对象类型不相同！" );
            return null;
        }
        // 存储不同字段的结果
        Map<String, Object> diffFieldsMap = new HashMap<String, Object>();

        Field[] afterFields = null;
        // 拿出所有after的字段
        if ( afterBean != null ) {
            afterFields = afterBean.getClass().getDeclaredFields();
        }

        // 对比前后bean字段的值
        for ( Field field : afterFields ) {
            // 拿出after中的字段值
            field.setAccessible( true );
            Object afterVal = field.get( afterBean );
            String filedName = field.getName();
            
            //是否在排除字段内
            boolean isExclude = isExistExcludeField( filedName, excludeFields );
            if( !isExclude ){
                // 比对字段在object befor中的区别
                String diffResult = diffField( afterVal, filedName, beforeBean );
                if ( StringUtils.isNotBlank( diffResult ) ) {
                    diffFieldsMap.put( filedName, diffResult );
                }
            }
        }

        return diffFieldsMap;

    }
    
    /**
     * @description:比对字段在beforeBean中的区别
     * @author:吴圣(890160)
     * @createDate: 2015年8月19日
     * @param afterVal
     * @param filedName
     * @param beforeBean
     * @return:
     * @throws Exception
     */
    private static String diffField(Object afterVal, String filedName, Object beforeBean) throws Exception {
        // 去掉序列化字段
        if ( "serialVersionUID".equals( filedName ) ) {
            return null;
        }
        String result = null;
        // 拿出before中相应字段的值
        String methodName = "get" + filedName.substring( 0, 1 ).toUpperCase() + filedName.substring( 1 );
        Object beforeVal = beforeBean.getClass().getDeclaredMethod( methodName ).invoke( beforeBean );

        //判断前后值是否为空
        boolean isBeforeEmpty = isNullOrEmpty( beforeVal );
        boolean isAfterEmpty = isNullOrEmpty( afterVal );
        
        // 如果afterVal不为空时
        if ( !isAfterEmpty && !isBeforeEmpty ) {
            if ( !afterVal.equals( beforeVal ) ) {
                result = beforeVal.toString() + "-->" + afterVal.toString();
            }
        }else if( !isAfterEmpty && isBeforeEmpty ){
        	result = "-->" + afterVal.toString();
        }else if( isAfterEmpty && !isBeforeEmpty ){
        	result = beforeVal.toString() + "-->";
        }
        return result;
    }
    
    /**
     * 
     * @description:是否在排除字段内
     * @author: 吴圣(890160)
     * @createDate: 2015年8月20日
     * @param filedName --检查的字段
     * @param excludeFields --所有需要排除的字段 用“,”分隔
     * @return:boolean
     */
    private static boolean isExistExcludeField(String filedName, String excludeFields) {
        if( StringUtils.isNotBlank( excludeFields ) ){
            String[] fieldArr = excludeFields.trim().split( "," );
            for( String str : fieldArr ){
                if( StringUtils.equals( filedName, str ) ){
                    return true;
                }
            }
        }
        return false;
    }

    /**
	 * 判断对象或对象数组中每一个对象是否为空: 对象为null，字符序列长度为0，集合类、Map为empty
	 * 
	 * @param obj
	 * @return boolean
	 */
	public static boolean isNullOrEmpty(Object obj) {
		if (obj == null)
			return true;

		if (obj instanceof CharSequence)
			return ((CharSequence) obj).length() == 0;

		if (obj instanceof Collection)
			return ((Collection<?>) obj).isEmpty();

		if (obj instanceof Map)
			return ((Map<?, ?>) obj).isEmpty();

		if (obj instanceof Object[]) {
			Object[] object = (Object[]) obj;
			if (object.length == 0) {
				return true;
			}
			boolean empty = true;
			for (int i = 0; i < object.length; i++) {
				if (!isNullOrEmpty(object[i])) {
					empty = false;
					break;
				}
			}
			return empty;
		}
		return false;
	}

}
