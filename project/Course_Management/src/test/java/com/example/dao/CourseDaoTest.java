package com.example.dao;

import static org.junit.Assert.assertNull;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.Assert;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.model.Course;
import com.example.model.CourseDTO;
import com.example.model.User;
import com.example.service.CourseService;

@RunWith(SpringJUnit4ClassRunner.class)  
@SpringBootTest
@Transactional
class CourseDaoTest {

	@Autowired
	private CourseService courseservice;
	
	@Test 
	@Order(1)
	@DisplayName("EnrolledStudentsTest")
	 void enrolledStudentTest()
	{
		List<User> user=courseservice.getEnrolledStudents(3);
		assertNotNull(user);
	}
	
	
	@Test
	@Order(2)
	@DisplayName("FindCourseByNameTest")
	 void findCourseByNameTest()
	{
		Course course=courseservice.findCourseByName("spring");
		String coursename="spring";
		assertEquals(coursename,course.getName());	
	}
	
	@Test 
	@Order(3)
	@DisplayName("UpdateCourseTest")
	@Rollback(value = true)
	 void updateCourseTest()
	{
		CourseDTO c=new CourseDTO();
		c.setImage("js.png");
		c.setDescription("python");
		c.setName("python");
		c.setStatus("coming Soon");
		courseservice.addTheCourse(c);
		Course cou=courseservice.findCourseByName("python");
		CourseDTO c1=new CourseDTO();
		c1.setId(cou.getId());
		c1.setImage(cou.getImage());
		c1.setDescription(cou.getDescription());
		c1.setName(cou.getName());
		c1.setUsers(cou.getUsers());
		c1.setStatus("Go To Course");
		Course course=courseservice.updateCourse(c1);
		assertNotNull(cou);
		assertEquals(cou.getStatus(),course.getStatus());
	}
	@Test
	@Order(4)
	@Rollback(value =true)
	@DisplayName("Addthecourse")
	void testAddTheCourse() {
		CourseDTO c= new CourseDTO();
		c.setName("Junit");
		c.setDescription("hey there");
		c.setImage("");
		c.setStatus("Coming soon");
		courseservice.addTheCourse(c);
		assertNotNull(courseservice.findCourseByName("Junit"));

	}
	
	@Test
	@Order(5)
	@DisplayName("FindtheCourse")
	void testFindTheCourse() {
		Assert.assertEquals("python",courseservice.findCourseByName("python").getName());
	}
	@Test
	@Order(6)
	@DisplayName("GetAllcourse")
	void testGetAllCourse() {
		Assert.assertTrue("Get all courses",courseservice.getAllTheCourse().size()>0);
	}
	
	@Test
	@Order(7)
	@Rollback(value = true)
	@DisplayName("DeleteCourse")
	void testDeleteCourse() {
		courseservice.deleteCourse(4);
		assertNull(courseservice.findCourse(4));
	}
	

}
