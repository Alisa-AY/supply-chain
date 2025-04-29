 package com.jiuyv.supplychain.enums;


public enum TypeEnum {
	
	EVIDENCE("evidence");
	
	private String type;
	
	TypeEnum(String type) {
		this.type = type;
	}

	public String getType() {
		return type;
	}
	
	
}
