package com.zhiyou.service.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.VideoMapper;
import com.zhiyou.model.Course;
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService {

	@Autowired
	VideoMapper videoMapper;

	@Override
	public List<Video> selectVideoAll(int page, int num) {
		// TODO Auto-generated method stub
		return videoMapper.selectVideoAll(page, num);
	}

	@Override
	public int selectVideoCount() {
		// TODO Auto-generated method stub
		return videoMapper.selectVideoCount();
	}

	@Override
	public void updateVideo(Video video) {
		videoMapper.updateVideo(video);

	}

	@Override
	public Video selectVideoById(int id) {
		// TODO Auto-generated method stub
		return videoMapper.selectVideoById(id);
	}

	@Override
	public void addVideo(Video video) {
		videoMapper.addVideo(video);

	}

	@Override
	public void deleteVideo(int id, HttpServletResponse resp) {
		int number = videoMapper.deleteVideo(id);
		if (number == 1) {
			try {
				resp.getWriter().write("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public Speaker seleteSpeakerNameById() {
		// TODO Auto-generated method stub
		return videoMapper.seleteSpeakerNameById();
	}

	@Override
	public List<Video> selectAll() {
		// TODO Auto-generated method stub
		return videoMapper.selectAll();
	}

	@Override
	public List<Speaker> selectSpeaker() {
		// TODO Auto-generated method stub
		return videoMapper.selectSpeaker();
	}

	@Override
	public List<Course> seleteCourse() {
		// TODO Auto-generated method stub
		return videoMapper.seleteCourse();
	}

	@Override
	public List<Video> selectLike(Video video) {
		// TODO Auto-generated method stub
		return videoMapper.selectLike(video);
	}

}
