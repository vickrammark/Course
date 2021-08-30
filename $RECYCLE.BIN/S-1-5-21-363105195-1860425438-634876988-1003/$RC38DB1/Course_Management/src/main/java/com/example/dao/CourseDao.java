package com.example.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.example.exception.CourseExistedExcpetion;
import com.example.model.Course;
import com.example.model.User;

@Repository
@EnableTransactionManagement
public class CourseDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void addTheCourse(Course course) {

		Course c = findCourseByName(course.getName());
		Session session = null;
		if (c == null) {
			session = sessionFactory.getCurrentSession();
			session.save(course);
		} else {
			throw new CourseExistedExcpetion("Course already exist!!");
		}
	}

	@Transactional
	public Course findTheCourse(int id) {
		Session session = sessionFactory.getCurrentSession();
		Course course = session.get(Course.class, id);
		if(course!=null)
		{
		return course;
		}
		else
		{
			return null;
		}
	}

	@Transactional
	public List<Course> getAllCourse() {
		Session session = sessionFactory.getCurrentSession();
		Query<Course> q = session.createQuery("from  Course");
		return q.list();
	}

	@Transactional
	public User deleteTheUser(int id, int courseid) {
		Session session = sessionFactory.getCurrentSession();
		User u = session.get(User.class, id);
		Set<Course> courses = u.getCourses();
		List<Course> c = new ArrayList<>(courses);
		Course course = new Course();
		for (Course course_enorlled : c) {
			if (course_enorlled.getId() == courseid) {
				course = course_enorlled;
			}
		}
		course.getUsers().remove(u);
		return u;
	}

	@Transactional
	public Course deleteCourse(int id) {
		Session session = sessionFactory.getCurrentSession();
		Course course = findTheCourse(id);
		List<User> users = new ArrayList<>(course.getUsers());
		for (User user : users) {
			user.getCourses().remove(course);
		}
		session.delete(course);
		return course;
	}

	

	@Transactional
	public List<User> getEnrolledStudents(int courseid) {
		Course course = findTheCourse(courseid);
		return new ArrayList<>(course.getUsers());
	}

	@Transactional
	public Course findCourseByName(String coursename) {
		Session session = sessionFactory.getCurrentSession();
		Query<Course> q = session.createQuery("from Course c where c.name=:course_name");
		q.setParameter("course_name", coursename);
		try {
			return q.getSingleResult();			
		} catch (NoResultException e) {
			return null;
		}
	}

	@Transactional
	public Course updateCourse(Course course) {
		Session session = sessionFactory.getCurrentSession();
		Course c = findCourseByName(course.getName());
		c.setName(course.getName());
		c.setImage(course.getImage());
		c.setStatus(course.getStatus());
		c.setDescription(course.getDescription());
		session.update(c);
		return c;
	}

}
