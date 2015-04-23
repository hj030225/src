package cn.looip.jurisdiction.repository.domain;

import java.io.Serializable;

public class SysUser implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;

	private String loginName;

	private String loginPwd;

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

	
}