package com.zhiyou.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.UserMapper;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;

	@Override
	public User selectByAccounts(String accounts) {

		User user = userMapper.selectByAccounts(accounts);
		if (user == null) {
			return null;
		} else {
			return user;
		}
	}

}
