package com.zhiyou.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.zhiyou.model.Speaker;

public interface SpeakerService {
	// 展示主讲人
	List<Speaker> selectSpeakerAll(int page, int num, String speaker_name);

	// 查询总条数
	int selectSpeakerCount(String speaker_name);

	// 更新主讲人信息
	void updateSpeaker(Speaker speaker);

	// 根据id查询主讲人信息
	Speaker selectSpeakerById(int id);

	// 添加主讲人信息
	void addSpeaker(Speaker speaker);

	// 删除主讲人信息
	void deleteSpeaker(int id, HttpServletResponse resp);

}
