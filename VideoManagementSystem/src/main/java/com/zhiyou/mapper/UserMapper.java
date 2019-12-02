package com.zhiyou.mapper;

import com.zhiyou.model.User;

public interface UserMapper {
	// 根据账号名查询用户是否存在
	User selectByAccounts(String accounts);

}
