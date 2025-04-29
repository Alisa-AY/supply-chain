package com.jiuyv.supplychain.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jiuyv.supplychain.entity.ContractTemplateEntity;


@Mapper
public interface ContractTemplateDao extends BaseMapper<ContractTemplateEntity> {

	/**
	 * 查询模板信息
	 * @param template
	 * @return
	 */
	ContractTemplateEntity queryByTemplate(@Param("template") String template);
	
}
