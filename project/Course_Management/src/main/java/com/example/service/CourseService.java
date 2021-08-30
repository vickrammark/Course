package com.example.service;

import java.util.List;

import com.example.model.Course;
import com.example.model.CourseDTO;
import com.example.model.User;

public interface CourseService {

	public String addTheCourse(CourseDTO course);

	public Course findCourse(int id);

	public List<Course> getAllTheCourse();
	
	public User deleteTheUser(int id,int courseid);
	
	public Course deleteCourse(int id);
	

	public List<User> getEnrolledStudents(int courseid);

	public Course findCourseByName(String coursename);

	public Course updateCourse(CourseDTO course);
}
