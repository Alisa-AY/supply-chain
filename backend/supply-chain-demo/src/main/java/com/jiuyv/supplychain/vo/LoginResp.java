package com.jiuyv.supplychain.vo;

import java.io.Serializable;



public class LoginResp implements Serializable{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 4440655140010457080L;
	/**
	 * 用户id
	 */
	private String userId;
	
	/**
	 * 参与者id
	 */
	private String participaterId;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getParticipaterId() {
		return participaterId;
	}

	public void setParticipaterId(String participaterId) {
		this.participaterId = participaterId;
	}
	
	

}
