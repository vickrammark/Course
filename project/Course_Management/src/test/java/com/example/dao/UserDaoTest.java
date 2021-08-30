
package com.example.dao;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.exception.UserExistedException;
import com.example.model.Course;
import com.example.model.User;
import com.example.model.UserDTO;
import com.example.service.CourseService;
import com.example.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)  
@SpringBootTest
@Transactional
class UserDaoTest {

	@Autowired
	private UserService userservice;

	@Autowired
	private CourseService courseservice;
	
	@Autowired
	private PasswordEncoder encoder;

	@Test
	@Order(1)
	@DisplayName("SaveUserTest")
	@Rollback(value = true)
	 void saveUserTest() {
		UserDTO u = new UserDTO();
		u.setEmail("vickrammark54@gmail.com");
		u.setPassword("123");
		u.setProfile("w.png");
		u.setUsername("whity");
		UserExistedException exception = assertThrows(UserExistedException.class, () -> {
			userservice.saveUser(u);
		});
		assertEquals("Sorry the email already is existed!!", exception.getMessage());
	}

	@Test
	@Order(2)
	@DisplayName("CourseEnrollTest")
	@Rollback(value = true)
	 void courseEnrollTest() {
		User user = userservice.findUser("vickrammark54@gmail.com");
		UserDTO u = new UserDTO();
		u.setEmail(user.getEmail());
		u.setPassword(user.getPassword());
		u.setProfile(user.getProfile());
		u.setUsername(user.getUsername());
		u.setId(user.getId());
		u.setRoles(user.getRoles());
		u.setCourses(user.getCourses());
		Course course = courseservice.findCourse(3);
		userservice.enrollInTheCourse(u, course);
		int exceptedId = 0;
		List<Course> c = userservice.getAllTheCourseenrolled(user.getEmail());
		for (Course cc : c) {
			if (cc.getId() == course.getId()) {
				exceptedId = cc.getId();
			}
		}
		assertEquals(exceptedId, course.getId());

	}

	@Test
	@Order(3)
	@DisplayName("Reterive the enrolled Course")
	void testGetAllTheCourse_enrolled() {
		String emailID = "vickrammark54@gmail.com";

		List<Course> course_enrolled = userservice.getAllTheCourseenrolled(emailID);

		assertEquals("c",course_enrolled.get(0).getName());
		assertEquals("python",course_enrolled.get(1).getName());
	}

	@Test
	@Order(4)
	@DisplayName("Reterive All Course")
	void testGetAllTheCourse() {
		List<Course> courses = courseservice.getAllTheCourse();

		assertNotNull(courses);
		assertAll("Reterived Course", () -> assertEquals("spring",courses.get(0).getName()),
				() -> assertEquals("Javascript",courses.get(1).getName()),
				() -> assertEquals( "c",courses.get(2).getName()));

	}

	@Test
	@Order(5)
	@DisplayName("Get the Course Details")
	void testGetAllTheCourseDetails() {
		List<Course> course = userservice.getAllTheCourseDetails();

		assertNotNull(course);
	}

	@Test
	@Order(6)
	@DisplayName("User Checking")
	void testFindUser() {
		User expected = new User();
		expected.setId(1);
		expected.setUsername("Vickram");
		expected.setEmail("vickrammark54@gmail.com");

		User actual = userservice.findUser(expected.getEmail());

		assertNotNull(actual);
		assertAll("Checking User", () -> assertEquals(expected.getId(), actual.getId()),
				() -> assertEquals(expected.getUsername(), actual.getUsername()),
				() -> assertEquals(expected.getEmail(), actual.getEmail()));
	}

	@Test
	@Order(7)
	@DisplayName("Updating User")
	@Rollback(value = true)
	void testUpdateUser() {
		UserDTO expected = new UserDTO();

		expected.setUsername("Vickram");
		expected.setEmail("vickrammark54@gmail.com");
		expected.setProfile("xyz123.png");
		expected.setPassword("12345678");
		String emailID =  "vickrammark54@gmail.com";

		User actual = userservice.updateUser(expected, emailID);

		assertNotNull(actual);
		assertAll("Updated User", () -> assertEquals(expected.getUsername(), actual.getUsername()),
				() -> assertEquals(expected.getEmail(), actual.getEmail()),
				() -> assertEquals(expected.getProfile(), actual.getProfile()));

	}

	@Test
	@Order(8)
	@DisplayName("Password Updation")
	@Rollback(value = true)
	void testUpdatePassword() {
		User expected = new User();
		expected.setEmail("vickrammark54@gmail.com");
		User actual = userservice.updatePassword("Vickram", "1234567" , expected.getEmail());
		assertTrue(encoder.matches("1234567",actual.getPassword()));
	}

}
