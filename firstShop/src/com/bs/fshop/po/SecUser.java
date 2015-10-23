package com.bs.fshop.po;

/**
 * 
 * @title:
 * @descrption: 
 * @team:
 * @className SecUser.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2015-9-28 上午9:42:04
 */
public class SecUser extends AllParent{
	
	
    /**
	 * 
	 */
	private static final long serialVersionUID = -3162233153133360943L;

	private Integer id;

    private String userId;

    private String name;

    private String nickName;

    private String mobile;

    private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName == null ? null : nickName.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }
    
    
}