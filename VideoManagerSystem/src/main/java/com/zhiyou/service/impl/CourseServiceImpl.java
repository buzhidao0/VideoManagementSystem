package com.zhiyou.service.impl;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.mapper.CourseMapper;
import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	CourseMapper courseMapper;

	@Override
	public List<Course> selectCourseAll(int page, int num, String course_title) {
		// TODO Auto-generated method stub
		return courseMapper.selectCourseAll(page, num, course_title);
	}

	@Override
	public int selectCourseCount(String course_title) {
		// TODO Auto-generated method stub
		return courseMapper.selectCourseCount(course_title);
	}

	@Override
	public void updateCourse(Course course) {
		courseMapper.updateCourse(course);

	}

	@Override
	public Course selectCourseById(int id) {
		// TODO Auto-generated method stub
		return courseMapper.selectCourseById(id);
	}

	@Override
	public void addCourse(Course course) {
		courseMapper.addCourse(course);

	}

	@Override
	public void deleteCourse(int id, HttpServletResponse resp) {
		int number = courseMapper.deleteCourse(id);
		if (number == 1) {
			try {
				resp.getWriter().write("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<Subject> selectSubjectAll() {
		// TODO Auto-generated method stub
		return courseMapper.selectSubjectAll();
	}

	@Override
	public void removeCourse(List<Integer> userIdList, HttpServletResponse resp) {
		int i = courseMapper.removeCourse(userIdList);
		if (i == userIdList.size()) {
			try {
				resp.getWriter().write("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
			;
		}

	}

}
