package com.jiuyv.supplychain.vo;

import java.io.Serializable;
import java.util.List;



public class ResCheckSigners implements Serializable{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -4111179933805664520L;
	
	/**
	 * 已签名的
	 */
	private List<String> signedOrgNames;
	/**
	 * 需要签名的
	 */
	private List<String> needSignOrgNames;

	public List<String> getSignedOrgNames() {
		return signedOrgNames;
	}

	public void setSignedOrgNames(List<String> signedOrgNames) {
		this.signedOrgNames = signedOrgNames;
	}

	public List<String> getNeedSignOrgNames() {
		return needSignOrgNames;
	}

	public void setNeedSignOrgNames(List<String> needSignOrgNames) {
		this.needSignOrgNames = needSignOrgNames;
	}
	
	

}
