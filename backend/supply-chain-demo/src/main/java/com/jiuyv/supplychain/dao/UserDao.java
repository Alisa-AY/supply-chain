package com.jiuyv.supplychain.dao;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jiuyv.supplychain.entity.UserEntity;
import com.jiuyv.supplychain.vo.LoginVO;


@Mapper
public interface UserDao extends BaseMapper<UserEntity> {

	/**
	 * 查询登录信息
	 * @param loginVO
	 * @return
	 */
	UserEntity queryUserInfo(LoginVO loginVO);

	/**
	 * 统计平台用户总数
	 * @return
	 */
	Integer countUsers();
	
}
