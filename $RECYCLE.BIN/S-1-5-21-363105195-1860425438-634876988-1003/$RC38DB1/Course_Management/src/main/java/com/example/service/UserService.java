package com.example.service;

import java.util.List;

import com.example.model.Course;
import com.example.model.User;
import com.example.model.UserDTO;

public interface UserService {

	public void saveUser(UserDTO user);

	public void enrollInTheCourse(UserDTO user, Course course);

	public List<Course> getAllTheCourseenrolled(String email);

	public List<String> getAllTheCourse();

	public User findUser(String email);

	public List<Course> getAllTheCourseDetails();

	public User updateUser(UserDTO user, String string);

	public User updatePassword(String oldpassword, String newpassword, String email);

	public boolean checkPassword(String oldpassword, String newpassword,String email);
}
