package com.jiuyv.supplychain.vo;

import java.io.Serializable;


public class ResSign implements Serializable{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -7444495267581574228L;
	
	/**
	 * 交易hash
	 */
	private String txHash;

	public String getTxHash() {
		return txHash;
	}

	public void setTxHash(String txHash) {
		this.txHash = txHash;
	}
	
	

}
