package com.zhiyou.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.zhiyou.model.User;
import com.zhiyou.service.UserService;
import com.zhiyou.util.FtpUtil;

@Controller
@RequestMapping("/WbYx")
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping("Login")
	public String Login(String accounts, String password, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		User user = userService.selectByAccounts(accounts, password, req);
		System.out.println("user ++登录+++ \t " + user);
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

	/**
	 * 注册账户
	 * 
	 * @param accounts
	 * @param password
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("insertUser")
	public String insertUser(@Param("accounts") String accounts, @Param("password") String password,
			HttpServletRequest req, HttpServletResponse resp) {
		userService.registered(accounts, password);
		return "Before/OpenOnlineCourse";

	}

	/**
	 * 展示个人中心
	 * 
	 * @param accounts
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("showEachCenter")
	public String showEachCenter(@Param("accounts") String accounts, HttpServletRequest req, HttpServletResponse resp) {
		User user = userService.seleteByAccount(accounts);
		System.out.println("从页面中取值：\r\t\t" + accounts);
		req.setAttribute("user", user);
		return "Before/EachCenter";

	}

	/**
	 * 展示修改资料页面
	 * 
	 * @param accounts
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("updateUserByAccounts")
	public String updateUserByAccounts(@Param("accounts") String accounts, @Param("password") String password,
			HttpServletRequest req, HttpServletResponse resp) {
		User user = (User) req.getSession().getAttribute("sessionKey");
		req.setAttribute("user", user);
		return "Before/ModifyTheData";

	}

	/**
	 * 展示更改头像页面
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("ModifyThePicture")
	public String ModifyThePicture(HttpServletRequest req, HttpServletResponse resp) {
		User user = (User) req.getSession().getAttribute("sessionKey");
		System.out.println("\t 获取信息 \t user \t " + user);
		req.setAttribute("user", user);
		return "Before/ModifyThePicture";

	}

	/**
	 * 展示更改密码页面
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("ChangeThePassword")
	public String ChangeThePassword(HttpServletRequest req, HttpServletResponse resp) {
		User user = (User) req.getSession().getAttribute("sessionKey");
		System.out.println("\t 获取信息 \t user \t " + user);
		req.setAttribute("user", user);
		return "Before/ChangeThePassword";

	}

	/**
	 * 修改个人信息
	 * 
	 * @param accounts
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("EachCenter")
	public String EachCenter(User user, HttpServletRequest req, HttpServletResponse resp) {

		userService.modifyTheData(user);
		System.out.println("\t 更改信息 \t user \t " + user);
		req.getSession().setAttribute("user", user);
		return "redirect:showEachCenter";

	}

	/**
	 * 上传头像图片
	 * 
	 * @param image_file
	 * @param req
	 * @param rep
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("upload")
	public String upload(MultipartFile image_file, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String upload = FtpUtil.upload(image_file.getInputStream(), image_file.getOriginalFilename());
		System.out.println(upload);
		req.getSession().setAttribute("user", upload);
		return "redirect:showEachCenter";
	}

}
