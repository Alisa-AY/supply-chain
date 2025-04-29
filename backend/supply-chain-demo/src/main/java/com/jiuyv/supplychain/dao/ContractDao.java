package com.jiuyv.supplychain.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jiuyv.supplychain.entity.ContractEntity;


@Mapper
public interface ContractDao extends BaseMapper<ContractEntity> {

	/**
	 * 根据链ID查询合约信息
	 * @param chainId
	 * @return
	 */
	ContractEntity queryByChainId(@Param("chainId") Integer chainId);
	
}
