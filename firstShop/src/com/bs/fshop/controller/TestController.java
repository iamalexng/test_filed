package com.bs.fshop.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bs.fshop.po.SecUser;
import com.bs.fshop.service.SecUserService;

import eu.bitwalker.useragentutils.Browser;
import eu.bitwalker.useragentutils.OperatingSystem;
import eu.bitwalker.useragentutils.UserAgent;

/**
 * @title:
 * @descrption: 
 * @team:
 * @className TestController.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2015-9-29 下午12:47:50
 * 
 */

@Controller
@RequestMapping("/TestController")
public class TestController {
	
	@Autowired
	private SecUserService secUserService;
	
	@Autowired  
	private  HttpServletRequest request;
	
	
	
	@RequestMapping(value="/queryUser")
	public ModelAndView queryUser(Integer userId) throws Exception{
		
		System.out.println("####"+userId);
		//SecUser secUser1=new SecUser();//secUserService.selectByPrimaryKey(1);
		SecUser secUser1=secUserService.selectByPrimaryKey(userId);
		//secUser1.setName("dou");
		System.out.println(secUser1.getName());
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("secUser", secUser1);
		modelAndView.setViewName("/page/test/test.jsp");
		
		
		return modelAndView;
		
		//return "redirect: /xxx/xxx/xxx.action";
	}
	
	@RequestMapping("/queryUserAndReturnString")
	public @ResponseBody String queryUserAndReturnString (Integer userId) throws Exception{
		System.out.println("####"+userId);
		SecUser secUser1=new SecUser();//secUserService.selectByPrimaryKey(userId);
		System.out.println(secUser1.getName());
		Map<String,Object> resultMap = new HashMap<String, Object>();
		resultMap.put("secUser", secUser1);
		resultMap.put("msg", "success");
		return "成功";
	}
	
	@RequestMapping("/queryUserAndReturnBean")
	public @ResponseBody SecUser queryUserAndReturnBean (Integer userId) throws Exception{
		System.out.println("####"+userId);
		//SecUser secUser1=new SecUser();//secUserService.selectByPrimaryKey(1);
		SecUser secUser1=secUserService.selectByPrimaryKey(userId);
		//secUser1.setName("dou");
		System.out.println(secUser1.getName());
		Map<String,Object> resultMap = new HashMap<String, Object>();
		resultMap.put("secUser", secUser1);
		resultMap.put("msg", "success");
		return secUser1;
	}
	
	@RequestMapping("/queryUserAndReturnMap")
	public @ResponseBody Map<String,Object> queryUserAndReturnMap (Integer userId) throws Exception{
		System.out.println("####"+userId);
		//SecUser secUser1=secUserService.selectByPrimaryKey(userId);
		SecUser secUser1=new SecUser();
		String ua = request.getHeader("User-Agent");
		System.out.println("#########User-Agent=="+ua);
		UserAgent userAgent=UserAgent.parseUserAgentString(ua);
		Browser browser = userAgent.getBrowser();  
	    OperatingSystem os = userAgent.getOperatingSystem();
	    
	    System.out.println("browser="+browser+",,OperatingSystem="+os);
	    
		
		secUser1.setNickName("不查询数据库的测试人员");
		System.out.println(secUser1.getName());
		Map<String,Object> resultMap = new HashMap<String, Object>();
		resultMap.put("secUser", secUser1);
		resultMap.put("msg", "success");
		return resultMap;
	}
}
