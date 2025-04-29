package com.jiuyv.supplychain.bo;

import java.io.Serializable;
import java.util.List;



public class TransDataRespBO implements Serializable{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -5037579102720199362L;
	
	private String transactionHash;
	
	private List<LogAddressBO> logs;

	public String getTransactionHash() {
		return transactionHash;
	}

	public void setTransactionHash(String transactionHash) {
		this.transactionHash = transactionHash;
	}

	public List<LogAddressBO> getLogs() {
		return logs;
	}

	public void setLogs(List<LogAddressBO> logs) {
		this.logs = logs;
	}
	
	

}
