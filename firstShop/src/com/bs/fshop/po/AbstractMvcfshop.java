package com.bs.fshop.po;

import java.io.Serializable;
import java.util.Date;

/**
 * @title:
 * @descrption: 抽象类
 * @team:
 * @className Mvcfshop.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2015-9-28 下午3:25:23
 * 
 */
public class AbstractMvcfshop implements Serializable {
	
	
	/**
	 * 随机序号
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String createuser;
	private Date createdate;
	private String modifyuser;
	private Date modifydate;
	public String getCreateuser() {
		return createuser;
	}
	public void setCreateuser(String createuser) {
		this.createuser = createuser;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public String getModifyuser() {
		return modifyuser;
	}
	public void setModifyuser(String modifyuser) {
		this.modifyuser = modifyuser;
	}
	public Date getModifydate() {
		return modifydate;
	}
	public void setModifydate(Date modifydate) {
		this.modifydate = modifydate;
	}
	@Override
	public String toString() {
		return "AbstractMvcfshop [createuser=" + createuser + ", createdate="
				+ createdate + ", modifyuser=" + modifyuser + ", modifydate="
				+ modifydate + "]";
	}
	
}
