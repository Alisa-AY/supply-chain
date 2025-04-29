package com.jiuyv.supplychain.enums;



public enum StatusEnum {
	
	/**
	 * 草稿
	 */
	DRAFT("draft"),
	
	/**
	 * 已确认
	 */
	CONFIRMED("confirmed");
	
	private String status;
	
	StatusEnum(String status){
        this.status = status;
    }

	public String getStatus() {
		return status;
	}
	

}
