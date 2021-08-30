package com.example.controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.model.Course;
import com.example.model.CourseDTO;
import com.example.model.User;
import com.example.service.CourseService;

@Controller
public class AdminController {

	@Autowired
	private CourseService courseService;
	
	private String courseattr="course";
	
	private String courseAlreadyExistedMessage="";


	@RequestMapping("/addCourse")
	public String addCourse(@ModelAttribute("course") CourseDTO course,Model model) {
		model.addAttribute("ex_message", courseAlreadyExistedMessage);
		courseAlreadyExistedMessage="";
		return "add_course/addCourse_page.jsp";
	}

	@RequestMapping("/success_page")
	public String saveTheCourse(@ModelAttribute("course") CourseDTO course, @RequestParam("fileimage") @NotNull MultipartFile file,
			Model model) {
		String filename="";
		  filename = StringUtils.cleanPath(file.getOriginalFilename());
		course.setImage(filename);
		String message = courseService.addTheCourse(course);
		Course course1=courseService.findCourseByName(course.getName());
		model.addAttribute("course",course1);
		if (!message.equals("")) {
			courseAlreadyExistedMessage=message;
			return "redirect:/addCourse";
		} else {
			createImageInFileSystem(course1, filename, file);
			return "add_course/success_page.jsp";
		}
	}

	private void createImageInFileSystem(Course course, String filename, MultipartFile file) {
		String uploadDir = "/course_images/" + course.getId();
		Path uploadPath = Paths.get(uploadDir);
		if (!Files.exists(uploadPath)) {
			try {
				Files.createDirectories(uploadPath);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		try {
			InputStream inputStream = file.getInputStream();
			Path filePath = uploadPath.resolve(filename);
			Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping("/admin")
	public String getAllCourse(Model model) {
		List<Course> courses = courseService.getAllTheCourse();
		model.addAttribute("courses", courses);
		return "admin/admin.jsp";
	}

	@RequestMapping("/deleteCourse")
	public String deleteCourse(@RequestParam("course_id") int id, Model model) {
		Course course = courseService.deleteCourse(id);
		model.addAttribute(courseattr, course);
		return "admin/delete/delete_success_page.jsp";
	}

	@RequestMapping("/student_list")
	public String getStudentList(@RequestParam("course") int courseid, Model model) {
		List<User> users = courseService.getEnrolledStudents(courseid);
		Course course = courseService.findCourse(courseid);
		model.addAttribute("users", users);
		model.addAttribute(courseattr, course);
		return "admin/student/student_list.jsp";
	}

	@RequestMapping("/deleteStudent")
	public String getStudentDeleted(@RequestParam("user_id") int id, @RequestParam("course_id") int courseid,
			Model model) {
		User user = courseService.deleteTheUser(id, courseid);
		model.addAttribute("user", user);
		return "admin/delete/delete_student_success_page.jsp";
	}

	@RequestMapping("/updatepage")
	public String getUpdatePage(@RequestParam("course_id") int id, Model model) {
		Course course = courseService.findCourse(id);
		model.addAttribute(courseattr, course);
		return "update/update_page.jsp";
	}

	@RequestMapping("/updateCourse")
	public String updateCourse(@ModelAttribute("course") CourseDTO course,
		 @RequestParam("image_path") @NotNull MultipartFile file) {
		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		course.setImage(filename);
		Course c = courseService.updateCourse(course);
		createImageInFileSystem(c, filename, file);
		return "redirect:/updatepage?course_id=" + c.getId();
	}
	
}
