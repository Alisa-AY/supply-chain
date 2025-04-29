package com.jiuyv.supplychain.vo;

import java.io.Serializable;


public class ResQueryRole implements Serializable{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -3729999213247765230L;
	
	/**
	 * 角色
	 */
	private String role;
	/**
	 * 参与方id
	 */
	private Integer participaterId;

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Integer getParticipaterId() {
		return participaterId;
	}

	public void setParticipaterId(Integer participaterId) {
		this.participaterId = participaterId;
	}
	
	

}
