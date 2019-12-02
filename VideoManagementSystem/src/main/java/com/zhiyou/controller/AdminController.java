package com.zhiyou.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.service.UserService;

@Controller
public class AdminController {
	@Autowired
	UserService adminService;

	@RequestMapping("show")
	public String show(String accounts, HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("list", adminService.selectByAccounts(accounts));
		return "show";
	}

}
