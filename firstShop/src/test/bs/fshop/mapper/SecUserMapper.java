package test.bs.fshop.mapper;

import javax.annotation.Resource;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bs.fshop.po.SecUser;
import com.bs.fshop.service.*;
import com.sun.istack.internal.logging.Logger;
import static org.junit.Assert.*;

/**
 * @title:
 * @descrption: 
 * @team:
 * @className SecUserMapper.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2017-3-22 上午10:42:46
 * 
 */
public class SecUserMapper {

	 @Resource(type = SecUserService.class)
	 SecUserService secUserService;
	 
	 @Before
	 public void setUp() throws Exception {
		 //selectByPrimaryKey
		 SecUser secUser=secUserService.selectByPrimaryKey(2);
		 System.out.println(secUser.getName());
		 System.out.println(secUser.getUserId());
		 System.out.println(secUser.getPassword());
		 System.out.println(secUser.getNickName());
	 }
	 @After
	 public void tearDown() throws Exception {
	  System.out.println("测试结束...");
	 }
	 
	 @Test
	 public void testSetMethod() {
		 SecUser secUser=secUserService.selectByPrimaryKey(2);
		 System.out.println(secUser.getName());
		 System.out.println(secUser.getUserId());
		 System.out.println(secUser.getPassword());
		 System.out.println(secUser.getNickName());
	 }
	 
	 @Test
	 public void testSetMethod1()
	 {
		 
	 }
}
