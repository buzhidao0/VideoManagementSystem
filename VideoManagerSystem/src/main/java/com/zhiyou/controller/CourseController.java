package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.service.CourseService;

@Controller
public class CourseController {

	@Autowired
	CourseService courseService;

	@RequestMapping("courseShow")
	public String courseShow(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String course_title = req.getParameter("course_title") == null ? "" : req.getParameter("course_title");
		int count = courseService.selectCourseCount(course_title);
		System.out.println("count" + count);
		int page = req.getParameter("page") == null || req.getParameter("page") == "" ? 1
				: Integer.valueOf(req.getParameter("page"));
		System.out.println("\t\t+page\t" + page);
		req.setAttribute("count", count);
		req.setAttribute("page", page);
		req.setAttribute("courseList", courseService.selectCourseAll((page - 1) * 5, 5, course_title));
		return "After/CourseShow";

	}

	@RequestMapping("updateCourse")
	public String updateCourse(Integer id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setAttribute("course", courseService.selectCourseById(id));
		return "After/CourseUpdate";

	}

	@RequestMapping("alterUpdateCourse")
	public String alterUpdateCourse(Course course, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		courseService.updateCourse(course);
		return "redirect:courseShow";

	}

	@RequestMapping("addCourse")
	public String addCourse(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		List<Subject> subjectList = courseService.selectSubjectAll();
		req.setAttribute("subjectList", subjectList);
		return "After/CourseAdd";

	}

	@RequestMapping("alterAddCourse")
	public String alterAddCourse(Course course, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		courseService.addCourse(course);
		System.out.println("\t\tcourse" + course);
		return "redirect:courseShow";

	}

	@RequestMapping("deleteCourse")
	public void deleteCourse(Integer id, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		courseService.deleteCourse(id, resp);
	}

}
