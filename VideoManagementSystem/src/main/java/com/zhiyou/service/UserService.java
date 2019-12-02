package com.zhiyou.service;

import javax.servlet.http.HttpServletRequest;

import com.zhiyou.model.User;

public interface UserService {
	// 根据账号名查询用户是否存在
	User selectByAccounts(String accounts, String password, HttpServletRequest req);

}
