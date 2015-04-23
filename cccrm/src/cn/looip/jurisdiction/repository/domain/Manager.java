package cn.looip.jurisdiction.repository.domain;

import java.io.Serializable;

public class Manager implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
    private Integer id;

    private String loginName;

    private String loginPwd;

    private String userEmail;

    private String userMobile;

    private Integer userMessage;

    private Short userType;

    private Integer userRoleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserMobile() {
        return userMobile;
    }

    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile;
    }

    public Integer getUserMessage() {
        return userMessage;
    }

    public void setUserMessage(Integer userMessage) {
        this.userMessage = userMessage;
    }

    public Short getUserType() {
        return userType;
    }

    public void setUserType(Short userType) {
        this.userType = userType;
    }

    public Integer getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(Integer userRoleId) {
        this.userRoleId = userRoleId;
    }
    
    
}