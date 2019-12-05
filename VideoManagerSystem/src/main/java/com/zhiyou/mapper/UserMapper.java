package com.zhiyou.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.User;

public interface UserMapper {
	// 根据账号名查询用户是否存在
	User selectByAccounts(String accounts);

	// 修改个人资料
	void modifyTheData(String accounts);

	// 注册账户
	void registered(@Param("accounts") String accounts, @Param("password") String password);

	// 查询所有账户
	List<User> seleteAll();
}
