package com.bs.fshop.interceptor;

import java.lang.reflect.Method;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.MethodSignature;

import com.bs.fshop.utils.ReflectionUtils;

/**
 * @title:
 * @descrption: 
 * @team:
 * @className SpringInterceptor.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2017-4-12 上午9:28:07
 * 
 */
public abstract class SpringInterceptor {

	protected Method getJoinPointMethod(ProceedingJoinPoint joinPoint){
		MethodSignature joinPointObject = (MethodSignature) joinPoint.getSignature(); 

		//直接对Method操作，获取不到Annotations以及ParameterAnnotations，Method是interface的代理
		Method proxyMethod = joinPointObject.getMethod();  
		
		Object inspectBean  = joinPoint.getTarget();
		Method realMethod = ReflectionUtils.obtainAccessibleMethod(inspectBean, proxyMethod.getName(), proxyMethod.getParameterTypes());
		
		return realMethod;
	}
}
