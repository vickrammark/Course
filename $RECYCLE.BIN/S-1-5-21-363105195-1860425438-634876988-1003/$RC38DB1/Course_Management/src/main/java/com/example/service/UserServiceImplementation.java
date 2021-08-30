package com.example.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserDao;
import com.example.model.Course;
import com.example.model.Role;
import com.example.model.User;
import com.example.model.UserDTO;

@Service
public class UserServiceImplementation implements UserService {

	@Autowired
	private UserDao userDao;
	

	@Override
	public void saveUser(UserDTO u) {
		Set<Role>role=new HashSet<>();
		User user=userentitytodtoconverter(new User(), u);
		Role r=new Role();
		r.setAuthority("ROLE_user");
		role.add(r);
		user.setRoles(role);
		r.setUsers(user);
		userDao.saveUser(user);		
	}

	@Override
	public void enrollInTheCourse(UserDTO u, Course course) {
		User user=userentitytodtoconverter(new User(), u);
		userDao.enrollInTheCourse(user, course);
	} 

	@Override
	public List<Course> getAllTheCourseenrolled(String email) {
		return userDao.getAllTheCourseenrolled(email);
	}

	@Override
	public List<String> getAllTheCourse() {
		return userDao.getAllTheCourse();
	}
	
	@Override
	public User findUser(String email) {
		return userDao.findUser(email);
	}
	
	public List<Course> getAllTheCourseDetails()
	{
		return userDao.getAllTheCourseDetails();
	}

	@Override
	public User updateUser(UserDTO user,String email) {
		User u=userentitytodtoconverter(new User(), user);
		return userDao.updateUser(u,email);		
	}

	@Override
	public User updatePassword(String oldpassword, String newpassword, String email) {
		return userDao.updatePassword(oldpassword,newpassword,email);
		
	}
	
	private User userentitytodtoconverter(User u,UserDTO dto)
	{
	           u.setUsername(dto.getUsername());
	           u.setEmail(dto.getEmail());
	           u.setPassword(dto.getPassword());
	           u.setProfile(dto.getProfile());
	           u.setRoles(dto.getRoles());
	           u.setCourses(dto.getCourses());
	           return u;
	}

	@Override
	public boolean checkPassword(String oldpassword, String newpassword,String email) {
		return userDao.checkPassword(oldpassword,newpassword,email);
	}


}
