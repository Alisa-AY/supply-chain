package com.jiuyv.supplychain.bo;

import java.io.Serializable;



public class TransHandleResBO implements Serializable{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1667864439871913556L;
	
	
	private TransDataRespBO data;

	public TransDataRespBO getData() {
		return data;
	}

	public void setData(TransDataRespBO data) {
		this.data = data;
	}
	
	

}
