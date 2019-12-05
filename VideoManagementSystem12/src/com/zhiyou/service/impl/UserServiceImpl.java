package com.zhiyou.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.UserMapper;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;
import com.zhiyou.util.MD5Utils;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;

	public User selectByAccounts(String accounts, String password, HttpServletRequest req) {

		User user = userMapper.selectByAccounts(accounts);

		String md = MD5Utils.MD5Encode(password, "utf-8");
		System.out.println("MD5:+++++" + md);
		if (user != null) {
			if (user.getPassword().equals(md)) {
				System.out.println("登录成功");
			} else {
				req.setAttribute("msg", "密码错误");
				return null;
			}
		} else {
			req.setAttribute("msg", "用户不存在");
			return null;
		}
		return user;
	}

	/**
	 * 注册账户
	 */
	@Override
	public void registered(@Param("accounts") String accounts, @Param("password") String password) {
		userMapper.registered(accounts, password);

	}

	/**
	 * 展示修改资料页面
	 */
	public User seleteByAccount(String accounts) {
		//
		return userMapper.selectByAccount(accounts);
	}

	/**
	 * 修改个人资料
	 */
	@Override
	public void modifyTheData(User user) {
		//
		userMapper.modifyTheData(user);

	}

	/**
	 * 查询所有账户
	 */
	@Override
	public List<User> seleteAll() {
		//
		return userMapper.seleteAll();
	}

}
