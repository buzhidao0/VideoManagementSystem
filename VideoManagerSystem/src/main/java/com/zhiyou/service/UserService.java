package com.zhiyou.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zhiyou.model.User;

public interface UserService {
	// 根据账号名查询用户是否存在
	User selectByAccounts(String accounts, String password, HttpServletRequest req);

	// 修改个人资料
	void modifyTheData(String accounts);

	// 根据账号查询用户名个人信息
	User seleteByAccount(String accounts);

	// 注册
	void registered(String accounts, String password);

	List<User> seleteAll();
}
