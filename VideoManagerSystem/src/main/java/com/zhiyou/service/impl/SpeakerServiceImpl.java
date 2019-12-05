package com.zhiyou.service.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.SpeakerMapper;
import com.zhiyou.model.Speaker;
import com.zhiyou.service.SpeakerService;

@Service
public class SpeakerServiceImpl implements SpeakerService {

	@Autowired
	SpeakerMapper speakerMapper;

	@Override
	public List<Speaker> selectSpeakerAll(int page, int num, String speaker_name) {
		// TODO Auto-generated method stub
		List<Speaker> list = speakerMapper.selectSpeakerAll(page, num, speaker_name);
		System.out.println("list++++\n" + list);
		return list;
	}

	@Override
	public int selectSpeakerCount(String speaker_name) {
		// TODO Auto-generated method stub
		return speakerMapper.selectSpeakerCount(speaker_name);
	}

	@Override
	public void updateSpeaker(Speaker speaker) {
		speakerMapper.updateSpeaker(speaker);

	}

	@Override
	public Speaker selectSpeakerById(int id) {
		// TODO Auto-generated method stub
		return speakerMapper.selectSpeakerById(id);
	}

	@Override
	public void addSpeaker(Speaker speaker) {
		speakerMapper.addSpeaker(speaker);

	}

	@Override
	public void deleteSpeaker(int id, HttpServletResponse resp) {
		int number = speakerMapper.deleteSpeaker(id);
		if (number == 1) {
			try {
				resp.getWriter().write("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
