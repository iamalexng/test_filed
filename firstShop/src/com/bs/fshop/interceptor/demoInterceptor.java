package com.bs.fshop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * @title:
 * @descrption: 
 * @team:
 * @className demoIntercepter.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2015-10-26 上午9:46:09
 * 
 */
public class demoInterceptor implements HandlerInterceptor {
	
	
	
	//进入Handler(Controller)之前执行
	//*应用场景：常用语身份验证、权限管理
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	
	//执行Handler(Controller)之后，在返回ModelAndView之前执行
	//*应用场景：公用模型数据传到视图，也可以统一指定视图
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}
	
	//执行Handler(controller)完之后执行
	//*应用场景：统一异常处理
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
