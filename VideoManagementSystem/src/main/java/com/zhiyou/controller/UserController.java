package com.zhiyou.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public String show(String accounts, String password, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		User user = userService.selectByAccounts(accounts, password, req);
		if (user == null) {
			req.getAttribute("msg");
			System.out.println(req.getAttribute("msg"));
			return "index.jsp";
		} else {

			req.getSession().setAttribute("sessionKey", user);
			System.out.println("sessionKey" + user);
			return "/Before/OpenOnlineCourse";
		}
	}

}
