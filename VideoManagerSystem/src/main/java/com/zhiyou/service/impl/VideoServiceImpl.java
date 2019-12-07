package com.zhiyou.service.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.zhiyou.mapper.VideoMapper;
import com.zhiyou.model.Course;
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;
import com.zhiyou.util.FTPUtil;

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
	public List<Video> selectLikeVideo(String title, int speaker_id, int course_id) {
		// TODO Auto-generated method stub
		return videoMapper.selectLikeVideo(title, speaker_id, course_id);
	}

	@Override
	public int selectLikeVideoCount(String title, int speaker_id, int course_id) {
		// TODO Auto-generated method stub
		return videoMapper.selectLikeVideoCount(title, speaker_id, course_id);
	}

	public void removeVideo(List<Integer> userIdList, HttpServletResponse resp) {
		int i = videoMapper.removeVideo(userIdList);
		if (i == userIdList.size()) {
			try {
				resp.getWriter().write("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
			;
		}
	}

	@Override
	public String addVideoIMG(MultipartFile image_url) {
		try {
			String imgName = FTPUtil.upload(image_url.getInputStream(), image_url.getOriginalFilename());
			return imgName;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
