package com.jiuyv.supplychain.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jiuyv.supplychain.common.R;
import com.jiuyv.supplychain.dao.ParticipaterDao;
import com.jiuyv.supplychain.entity.ParticipaterEntity;
import com.jiuyv.supplychain.service.ParticipaterService;


@Service("participaterService")
public class ParticipaterServiceImpl extends ServiceImpl<ParticipaterDao, ParticipaterEntity> implements ParticipaterService {

	@Autowired
	private ParticipaterDao participaterDao;
	
	@Override
	public R queryAll() {
		List<ParticipaterEntity> list = participaterDao.queryAll();
		return R.ok(list);
	}
}