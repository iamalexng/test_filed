package com.bs.fshop.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.annotation.Retention;


/**
 * @title:
 * @descrption: 
 * @team:
 * @className changeRecord.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2017-2-17 下午3:49:20
 * 
 */

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface ChangeRecord {
	String fieldId() default "";
	
}
