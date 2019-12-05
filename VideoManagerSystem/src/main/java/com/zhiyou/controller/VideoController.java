package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;

@Controller
public class VideoController {

	@Autowired
	VideoService videoService;

	@RequestMapping("videoShow")
	public String videoShow(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		int count = videoService.selectVideoCount();
		System.out.println("count" + count);
		int page = req.getParameter("page") == null || req.getParameter("page") == "" ? 1
				: Integer.valueOf(req.getParameter("page"));
		System.out.println("\t\t+page\t" + page);
		req.setAttribute("count", count);
		req.setAttribute("page", page);
		System.out.println("videoList" + videoService.selectVideoAll((page - 1) * 5, 5));
		List<Video> videoList = videoService.selectVideoAll((page - 1) * 5, 5);
		req.setAttribute("videoList", videoService.selectVideoAll((page - 1) * 5, 5));
		return "After/VideoShow";

	}

	@RequestMapping("updateVideo")
	public String updateCourse(Integer id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setAttribute("video", videoService.selectVideoById(id));
		return "After/VideoUpdate";

	}

	@RequestMapping("alterUpdateVideo")
	public String alterUpdateVideo(Video video, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		videoService.updateVideo(video);
		return "redirect:videoShow";

	}

	@RequestMapping("addVideo")
	public String addCourse(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		return "After/VideoAdd";

	}

	@RequestMapping("alterAddVideo")
	public String alterAddVideo(Video video, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		videoService.addVideo(video);
		System.out.println("\t\tcourse" + video);
		return "redirect:videoShow";

	}

	@RequestMapping("deleteVideo")
	public void deleteVideo(Integer id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		videoService.deleteVideo(id, resp);
	}

}
