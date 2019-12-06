package com.zhiyou.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.zhiyou.model.Course;
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;

public interface VideoService {
	// 展示视频
	List<Video> selectVideoAll(int page, int num);

	// 查询总条数
	int selectVideoCount();

	// 更新视频
	void updateVideo(Video video);

	// 根据id查询视频信息
	Video selectVideoById(int id);

	// 添加视频
	void addVideo(Video video);

	// 删除视频
	void deleteVideo(int id, HttpServletResponse resp);

	// 通过speaker_id查到speaker_name
	Speaker seleteSpeakerNameById();

	// 查询所有信息
	List<Video> selectAll();

	// 查询speaker主讲人的所有
	List<Speaker> selectSpeaker();

	// 查询课程所有
	List<Course> seleteCourse();

	// 模糊查询
	List<Video> selectLikeVideo(int page, int num, Video video);
	// List<Video> selectLikeVideo(Video video);
}
