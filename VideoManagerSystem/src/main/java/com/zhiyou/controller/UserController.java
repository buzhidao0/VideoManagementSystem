package com.zhiyou.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.User;
import com.zhiyou.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping("Login")
	public String Login(String accounts, String password, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		User user = userService.selectByAccounts(accounts, password, req);
		System.out.println("user+++++++++++++" + user);
		if (user == null) {
			req.getAttribute("msg");
			System.out.println(req.getAttribute("msg"));
			return "index";
		} else {
			req.getSession().setAttribute("sessionKey", user);
			System.out.println("sessionKey" + user);
			return "Before/OpenOnlineCourse";
		}
	}

	/**
	 * 查询所有账户
	 */
	@RequestMapping("seleteAll")
	public void seleteAll(HttpServletRequest req, HttpServletResponse resp) {
		//
//		List<User> user = userService.seleteAll();
	}

	// 注册账户
	@RequestMapping("insertUser")
	public String insertUser(@Param("accounts") String accounts, @Param("password") String password,
			HttpServletRequest req, HttpServletResponse resp) {
		userService.registered(accounts, password);
		return "Before/OpenOnlineCourse";

	}

	// 展示个人中心
	@RequestMapping("showEachCenter")
	public String showEachCenter(String accounts, HttpServletRequest req, HttpServletResponse resp) {

		User user = userService.seleteByAccount(accounts);
		System.out.println("+++ user \t " + user);
		req.setAttribute("user", user);
		return "Before/EachCenter";

	}

	@RequestMapping("updateUserByAccounts")
	public String updateUserByAccounts(String accounts, HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("accounts" + accounts);
		User user = userService.seleteByAccount(accounts);
		System.out.println("\t\t user \t " + user);
		req.setAttribute("user", user);
		return "Before/ModifyTheData";

	}

	/**
	 * 修改个人资料
	 * 
	 * @param accounts
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("ModifyTheData")
	public String modifyTheData(String accounts, HttpServletRequest req, HttpServletResponse resp) {

		userService.modifyTheData(accounts);
		return "redirect:showEachCenter";

	}

//	ModifyThePicture
}
