package com.jiuyv.supplychain.enums;


public enum SignFlagEnum {
	
	/**
	 * 未签名
	 */
	UNSIGN(0),
	/**
	 * 已签名
	 */
	SIGNED(1);
	
	private int signFlag;
	
	SignFlagEnum(int signFlag){
		this.signFlag = signFlag;
	}

	public int getSignFlag() {
		return signFlag;
	}
	
	

}
