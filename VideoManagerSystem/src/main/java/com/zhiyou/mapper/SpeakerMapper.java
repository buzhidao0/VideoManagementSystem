package com.zhiyou.mapper;

import java.util.List;

import com.zhiyou.model.Speaker;

public interface SpeakerMapper {

	// 展示主讲人
	List<Speaker> selectSpeakerAll(int page, int num);

	// 查询总条数
	int selectSpeakerCount();

	// 更新主讲人信息
	void updateSpeaker(Speaker speaker);

	// 根据id查询主讲人信息
	Speaker selectSpeakerById(int id);

	// 添加主讲人信息
	void addSpeaker(Speaker speaker);

	// 删除主讲人信息
	int deleteSpeaker(int id);

	// 模糊查询
	List<Speaker> selectLike(Speaker speaker);
}
