package com.bs.fshop.controller;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.Controller;

import com.bs.fshop.mapper.SecUserMapper;
import com.bs.fshop.po.SecUser;
import com.bs.fshop.service.SecUserService;
import com.mysql.fabric.xmlrpc.base.Array;

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
	
	/*
	@Autowired
	private SecUserService secUserService;
	*/
	
	@RequestMapping(value="/queryUser")
	public ModelAndView queryUser() throws Exception{
		
		/*
		SecUser secUser1=secUserService.selectByPrimaryKey(1);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("secUser", secUser1);
		modelAndView.setViewName("/page/test/test.jsp");
		
		return modelAndView;
		*/
		return null;
	}


}
