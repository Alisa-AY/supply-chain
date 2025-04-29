package com.jiuyv.supplychain.util;

import com.jiuyv.supplychain.common.GlobalConstant;



public class BizUtils {
	
	/**
	 * 截取地址前面0x
	 * @param address
	 * @return
	 */
	public static String subStrAddress(String address){
		return address.substring(2, address.length());
	}
	/**
	 * 追加地址前面0x
	 * @param address
	 * @return
	 */
	public static String appendAddress(String address){
		return GlobalConstant.ADDRESS_PREFIX + address;
	}
	/*public static void main(String[] args) {
		String address = "0x123456";
		System.out.println(subStrAddress(address));
		System.out.println("=========");
		System.out.println(appendAddress("123456"));
	}*/

}
