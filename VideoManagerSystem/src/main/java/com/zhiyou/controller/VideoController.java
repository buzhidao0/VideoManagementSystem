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
		int page = req.getParameter("page") == null || req.getParameter("page") == "" ? 1
				: Integer.valueOf(req.getParameter("page"));
		req.setAttribute("count", count);
		req.setAttribute("page", page);
		req.setAttribute("speaker", videoService.selectSpeaker());
		req.setAttribute("course", videoService.seleteCourse());
		System.out.println("videoList" + videoService.selectVideoAll((page - 1) * 5, 5));
		List<Video> videoList = videoService.selectVideoAll((page - 1) * 5, 5);
		req.setAttribute("videoList", videoList);
		return "After/VideoShow";

	}

	@RequestMapping("updateVideo")
	public String updateCourse(Integer id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setAttribute("video", videoService.selectVideoById(id));
		req.setAttribute("speaker", videoService.selectSpeaker());
		req.setAttribute("course", videoService.seleteCourse());
		return "After/VideoUpdate";

	}

	@RequestMapping("alterUpdateVideo")
	public String alterUpdateVideo(Video video, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		System.out.println("\t\tvideo" + video);
		videoService.updateVideo(video);
		return "redirect:videoShow";

	}

	@RequestMapping("addVideo")
	public String addCourse(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setAttribute("speaker", videoService.selectSpeaker());
		req.setAttribute("course", videoService.seleteCourse());
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

	@RequestMapping("selectLikeVideo")
	public String selectLikeVideo(Video video, HttpServletRequest req, HttpServletResponse resp) {
//		String title = req.getParameter("title") == null ? "" : req.getParameter("title");
//		Integer speaker_id = req.getParameter("speaker_id") == null || req.getParameter("speaker_id") == "" ? 0
//				: Integer.valueOf(req.getParameter("speaker_id"));
//		Integer course_id = req.getParameter("course_id") == null || req.getParameter("course_id") == "" ? 0
//				: Integer.valueOf(req.getParameter("course_id"));
		int count = videoService.selectVideoCount();
		int page = req.getParameter("page") == null || req.getParameter("page") == "" ? 1
				: Integer.valueOf(req.getParameter("page"));
		req.setAttribute("count", count);
		req.setAttribute("page", page);
		// List<Video> selectLikeVideo = videoService.selectLikeVideo(title, speaker_id,
		// course_id);
		List<Video> selectLikeVideo = videoService.selectLikeVideo((page - 1) * 5, 5, video);

		System.out.println("\t\tselectLikeVideo" + selectLikeVideo);
		req.setAttribute("selectLikeVideo", selectLikeVideo);
		return "After/VideoShow";

	}
}
