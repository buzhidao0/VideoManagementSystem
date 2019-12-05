package com.zhiyou.filter;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * Servlet Filter implementation class FilterType
 */
public class FilterTypeInterceptor implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 
		boolean flag = true;
		// 如果是文件上传的请求，name 请求一定会实现 MultipartHttpServletRequest 接口
		if (request instanceof MultipartHttpServletRequest) {
			// 获得请求中所有的 map
			MultipartHttpServletRequest mu = (MultipartHttpServletRequest) request;
			// 获得 Map 中的所有 key 值
			Map<String, MultipartFile> fileMap = mu.getFileMap();
			// 获得一个迭代器
			Iterator<String> iterator = fileMap.keySet().iterator();
			// 循环迭代 key 值
			while (iterator.hasNext()) {
				// 逐一获得 key 值
				String forkey =  iterator.next();
				// 根据 key 取出文件
				MultipartFile file = mu.getFile(forkey);
				// 判断文件的大小是否超出范围
				if (file.getSize() > (1024*1024)) {
					request.setAttribute("msg", "上传文件为："+ file+ ", 请上传 1MB 以内的图片");
					request.getRequestDispatcher("edit.jsp").forward(request, response);
					flag = false;
					break;
				}
				// 取出文件名
				String filename = file.getOriginalFilename();
				// 调用方法判断文件是否合法
				if (!chenFile(filename)) {
					request.setAttribute("msg", "上床传文件类型错误，请重新上传图片");
					request.getRequestDispatcher("edit.jsp").forward(request, response);
					flag = false;
				}
			}
			return flag;
		}
		return false;
	}

	/**
	 * @param fileName
	 * @return	放行的路径
	 */
	public boolean chenFile(String fileName) {
		// 代表放行的类型（图片格式）
		String[] suff = {"jpg", "gif", "png", "jpeg", "bmp"};
		// 截取文件的后缀	lastIndexOf（最后一个指数）
		String suf = fileName.substring(fileName.lastIndexOf(".")+ 1, fileName.length());
		
//		while (suf.length() > 4) {
//			
//			suf.substring(fileName.lastIndexOf(".")+ 1, suf.length());
//			System.out.println(suf.length());
//		}
		// 判断 suff 中是否包含文件后缀	trim() 去掉空格	toLowerCase()转成小写
		if (Arrays.asList(suff).contains(suf.trim().toLowerCase())) {
			return true;
		}
		
		return false;
		
	}
	
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// 
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// 
		
	}

}
