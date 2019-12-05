package com.zhiyou.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Speaker;
import com.zhiyou.service.SpeakerService;



@Controller
public class SpeakerController {
	@Autowired
	SpeakerService speakerService;

	@RequestMapping("speakerShow")
	public String speakerShow(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		int count = speakerService.selectSpeakerCount();
		System.out.println("count"+count);
		int page = req.getParameter("page") == null || req.getParameter("page") == "" ? 1
				: Integer.valueOf(req.getParameter("page"));
		System.out.println("\t\t+page\t"+page);
		req.setAttribute("count", count);
		req.setAttribute("page", page);
		System.out.println("speakerList"+speakerService.selectSpeakerAll((page - 1) * 5, 5));
		req.setAttribute("speakerList", speakerService.selectSpeakerAll((page - 1) * 5, 5));
		return "After/SpeakerShow";
		
	}
	
	@RequestMapping("updateSpeaker")
	public String updateSpeaker(Integer id,HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setAttribute("speaker", speakerService.selectSpeakerById(id));
		return "After/SpeakerUpdate";
		
	}
	@RequestMapping("alterUpdateSpeaker")
	public String alterUpdateSpeaker(Speaker speaker,HttpServletRequest req, HttpServletResponse resp) throws Exception {
		speakerService.updateSpeaker(speaker);
		return "redirect:speakerShow";
		
	}
	@RequestMapping("addSpeaker")
	public String addSpeaker(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		return "After/SpeakerAdd";
		
	}
	
	@RequestMapping("alterAddSpeaker")
	public String alterAddSpeaker(Speaker speaker,HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		speakerService.addSpeaker(speaker);
		return "redirect:speakerShow";
		
	}
	
	@RequestMapping("deleteSpeaker")
	public void deleteSpeaker(Integer id,HttpServletRequest req, HttpServletResponse resp) throws Exception {
		speakerService.deleteSpeaker(id, resp);
	}
}
