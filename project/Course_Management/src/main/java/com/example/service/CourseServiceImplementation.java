package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.CourseDao;
import com.example.exception.CourseExistedExcpetion;
import com.example.model.Course;
import com.example.model.CourseDTO;
import com.example.model.User;

@Service
public class CourseServiceImplementation implements CourseService {

	@Autowired
	private CourseDao courseDao;

	public String addTheCourse(CourseDTO c) {
		String exmessage = "";
		Course course=courseentitytodtoconverter(new Course(), c);
		try {
			courseDao.addTheCourse(course);
		} catch (CourseExistedExcpetion e) {
			exmessage = e.getMessage();
		}
		return exmessage;
	}

	@Override
	public Course findCourse(int id) {
		return courseDao.findTheCourse(id);
	}

	@Override
	public List<Course> getAllTheCourse() {
		return courseDao.getAllCourse();
	}

	@Override
	public User deleteTheUser(int id, int courseid) {
		return courseDao.deleteTheUser(id, courseid);
	}

	@Override
	public Course deleteCourse(int id) {
		return courseDao.deleteCourse(id);

	}



	@Override
	public List<User> getEnrolledStudents(int courseid) {
		return courseDao.getEnrolledStudents(courseid);
	}

	@Override
	public Course findCourseByName(String coursename) {
		return courseDao.findCourseByName(coursename);
	}

	@Override
	public Course updateCourse(CourseDTO c) {
		Course course=courseentitytodtoconverter(new Course(), c);
		return courseDao.updateCourse(course);
	}
	private Course courseentitytodtoconverter(Course course,CourseDTO c)
	{
		course.setName(c.getName());
		course.setImage(c.getImage());
		course.setStatus(c.getStatus());
		course.setUsers(c.getUsers());
		course.setDescription(c.getDescription());
		return course;
	}

}
