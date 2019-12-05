package com.zhiyou.mapper;

import java.util.List;

import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;

public interface CourseMapper {
	// 展示课程
	List<Course> selectCourseAll(int page, int num, String course_title);

	// 查询总条数
	int selectCourseCount(String course_title);

	// 更新课程
	void updateCourse(Course course);

	// 根据id查询课程信息
	Course selectCourseById(int id);

	// 添加课程
	void addCourse(Course course);

	// 删除课程
	int deleteCourse(int id);

	// 添加课程的时候需要添加所属学科
	// 查询学科所有
	List<Subject> selectSubjectAll();

}
