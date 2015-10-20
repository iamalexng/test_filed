package com.bs.fshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.fshop.mapper.SecUserMapper;
import com.bs.fshop.po.SecUser;
import com.bs.fshop.service.SecUserService;

/**
 * @title:
 * @descrption: 
 * @team:
 * @className SecUserServiceImpl.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2015-9-29 上午10:38:57
 * 
 */

//@Service
public class SecUserServiceImpl implements SecUserService {

	@Autowired
	private SecUserMapper secUserMapper;
	
	
	public SecUser selectByPrimaryKey(Integer id) {
		SecUser secUser=secUserMapper.selectByPrimaryKey(id);
		//secUser.setName("sssss");
		return secUser;
	}

}
