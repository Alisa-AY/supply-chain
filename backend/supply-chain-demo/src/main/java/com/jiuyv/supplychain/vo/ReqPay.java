package com.jiuyv.supplychain.vo;

import java.io.Serializable;



public class ReqPay implements Serializable{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -3028096024011452390L;

	/**
	 * 链ID
	 */
	private Integer chainId;
	/**
	 * 支付总金额
	 */
	private Long totalAmount;
	public Integer getChainId() {
		return chainId;
	}
	public void setChainId(Integer chainId) {
		this.chainId = chainId;
	}
	public Long getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(Long totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	

}
