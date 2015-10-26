package com.bs.fshop.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import eu.bitwalker.useragentutils.Browser;
import eu.bitwalker.useragentutils.OperatingSystem;
import eu.bitwalker.useragentutils.UserAgent;


/**
 * @title:
 * @descrption: 菜单controller
 * @team:
 * @className MenuController.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2015-9-28 下午2:49:29
 * 
 */

@Controller
@RequestMapping("/MenuController")
public class MenuController {

	@Autowired  
	private  HttpServletRequest request;
	
	
	@RequestMapping(value = "/indexHomePage")
	public @ResponseBody String indexHomePage() throws Exception {
		System.out.println("init page");
		String ua = request.getHeader("User-Agent");
		UserAgent userAgent=UserAgent.parseUserAgentString(ua);
		Browser browser = userAgent.getBrowser();  
	    OperatingSystem os = userAgent.getOperatingSystem();
	    
	    System.out.println("browser="+browser+",,OperatingSystem="+os);
	    
	    String result;
	    if(os.toString().contains("WINDOWS")){
	    	result="pc";
	    }else{
	    	result="mobile";
	    }
	    
		return result;
	}

}
