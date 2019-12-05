package com.zhiyou.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zhiyou.model.User;

public interface UserService {
	// 根据账号名查询用户是否存在
	User selectByAccounts(String accounts, String password, HttpServletRequest req);

	// 注册
	void registered(String accounts, String password);

	// 根据账号查询用户名个人信息
	User seleteByAccount(String accounts);

	// 修改个人资料
	void modifyTheData(User user);

	List<User> seleteAll();

}
