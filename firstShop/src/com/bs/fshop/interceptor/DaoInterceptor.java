package com.bs.fshop.interceptor;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.MappedStatement.Builder;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.apache.log4j.Logger;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.bs.fshop.annotation.ChangeRecord;



/**
 * @title:
 * @descrption: 
 * @team:
 * @className ChangeRecordInterceptor.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2017-2-17 下午10:49:58
 * 
 */

@Intercepts({ @Signature(type = Executor.class, method = "query", args = { MappedStatement.class, Object.class,
	RowBounds.class, ResultHandler.class }) })
public class DaoInterceptor implements Interceptor {

	
	public Object intercept(Invocation invocation) throws Throwable {
		// TODO Auto-generated method stub
		/*
		MappedStatement mappedStatement = (MappedStatement) invocation.getArgs()[0];
        SqlCommandType sqlCommandType = mappedStatement.getSqlCommandType();
        mappedStatement.getSqlSource();
        */
		
		MappedStatement mappedStatement = (MappedStatement) invocation.getArgs()[0];
		String sqlId = mappedStatement.getId();
		SqlSource sqlSource=mappedStatement.getSqlSource();
		Object parameter = invocation.getArgs()[1];
	    Field[] fields = parameter.getClass().getDeclaredFields();
	    
	    for(Field field : fields){
	    	ChangeRecord cr=AnnotationUtils.getAnnotation(field, ChangeRecord.class);
	    		
	    		System.out.println("test @ change record is null");
	    	
	    }
		
		
		
		System.out.println("sqlId=="+sqlId);
		Object result = invocation.proceed();
		Method method =invocation.getMethod();
		ChangeRecord changeRecord=method.getAnnotation(ChangeRecord.class);
		
		
		
		if(changeRecord!=null){
			System.out.println("***拦截了changeRecord注解");
		}else{
			System.out.println("***没有注解");
		}
			
        System.out.println("test  ******");
		return result;
	}

	public Object plugin(Object target) {
		// TODO Auto-generated method stub
		System.out.println("******************* plugin拦截1");
		return Plugin.wrap(target, this);
	}

	public void setProperties(Properties properties) {
		// TODO Auto-generated method stub
		 String prop1 = properties.getProperty("prop1");
	       String prop2 = properties.getProperty("prop2");
	       System.out.println(prop1 + "------" + prop2);
	}

	
}
