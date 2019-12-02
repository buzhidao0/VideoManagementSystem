package com.zhiyou.service.impl;

import javax.servlet.http.HttpServletRequest;

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

}
