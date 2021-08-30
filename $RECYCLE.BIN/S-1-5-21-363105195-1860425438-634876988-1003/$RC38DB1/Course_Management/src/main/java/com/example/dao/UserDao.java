package com.example.dao;

import java.util.List;
import java.util.Set;

import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.example.exception.UserExistedException;
import com.example.model.Course;
import com.example.model.User;

@Repository
@EnableTransactionManagement
public class UserDao {

	@Autowired
	private SessionFactory factory;

	private String email = "email";

	@Autowired
	private PasswordEncoder enoder;

	@Transactional
	public void saveUser(User user) {

		User u = findUser(user.getEmail());
		if (u == null) {
			Session session = factory.getCurrentSession();
			user.setPassword(enoder.encode(user.getPassword()));
			session.save(user);
		} else {
			throw new UserExistedException("Sorry the email already is existed!!");
		}
	}

	@Transactional
	public void enrollInTheCourse(User user, Course course) {
		Session session = factory.getCurrentSession();
		Query<User> q = session.createQuery("from User u where u.email=:email");
		Query<Course> q1 = session.createQuery("from Course c where c.name=:name");
		q.setParameter(email, user.getEmail());
		q1.setParameter("name", course.getName());

		User u = q.getSingleResult();
		Course c = q1.getSingleResult();
		u.getCourses().addAll(Set.of(c));
		c.getUsers().addAll(Set.of(u));
		session.update(c);
		session.update(u);
	}

	@Transactional
	public List<Course> getAllTheCourseenrolled(String em) {

		Session session = factory.getCurrentSession();
		Query<Course> q = session.createQuery("select u.courses from User u where u.email=:email");
		q.setParameter(email, em);
		return q.list();
	}

	@Transactional
	public List<String> getAllTheCourse() {
		Session session = factory.getCurrentSession();
		Query<String> q = session.createQuery("select c.name from Course c");
		return q.list();
	}

	@Transactional
	public List<Course> getAllTheCourseDetails() {
		Session session = factory.getCurrentSession();
		Query<Course> q = session.createQuery("from Course c");
		return q.list();
	}

	@Transactional
	public User findUser(String em) {

		Session session = factory.getCurrentSession();
		Query<User> q = session.createQuery("from User u where u.email=:email");
		q.setParameter(email, em);
		User u = null;
		try {
			u = q.getSingleResult();
		} catch (NoResultException ex) {
			return null;
		}
		return u;
	}

	@Transactional
	public User updateUser(User user, String em) {
		Session session = factory.getCurrentSession();
		if (findUser(user.getEmail()) == null || user.getEmail().equals(em)) {
			User u = findUser(em);
			u.setEmail(user.getEmail());
			u.setUsername(user.getUsername());
			u.setProfile(user.getProfile());
			session.update(u);
			return u;
		} else {
			throw new UserExistedException("Sorry the email already existed");
		}
	}

	@Transactional
	public User updatePassword(String oldpassword, String newpassword, String email) {
		Session session = factory.getCurrentSession();
		User u = findUser(email);
		u.setPassword(enoder.encode(newpassword));
		session.update(u);
		return u;

	}

	@Transactional
	public boolean checkPassword(String oldpassword, String newpassword, String email) {

		User u = findUser(email);
		return enoder.matches(oldpassword, u.getPassword());
	}

}
