package com.example.controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.exception.UserExistedException;
import com.example.model.Course;
import com.example.model.User;
import com.example.model.UserDTO;
import com.example.service.CourseService;
import com.example.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@Autowired
	private CourseService courseService;

	private boolean passwordupdated = false;

	private String signupexceptionmessage = "";

	private String passwordstatemessage = "";

	private boolean passwordUpdatedOrNot = false;

	@RequestMapping("/course/course_page/{course_name}/go_to_course")
	public String getCoursePage(@PathVariable("course_name") String coursename, HttpSession session) {
		return coursename + "/" + coursename + ".jsp";
	}

	@RequestMapping("/course/course_page/{course_name}/topics/{topic_name}")
	public String getCoursTopics(@PathVariable("topic_name") String topicname,
			@PathVariable("course_name") String coursename) {

		return coursename + "/topics/" + topicname + ".jsp";
	}

	@RequestMapping("/login")
	public String getLoginForm(@ModelAttribute("user") UserDTO user) {

		return "login/login.jsp";
	}

	@RequestMapping("/course_display")
	public String getCourseDisplay(HttpSession session, Model m) {
		UserDTO user = (UserDTO) session.getAttribute("user");
		List<Course> courseenrolled = userService.getAllTheCourseenrolled(user.getEmail());
		user.setCourses(new HashSet<>(courseenrolled));
		List<String> enorlledcoursesname = courseenrolled.stream().map(Course::getName).collect(Collectors.toList());

		m.addAttribute("course_enrolled", enorlledcoursesname);
		List<Course> coursedetails = userService.getAllTheCourseDetails();
		m.addAttribute("all_course", coursedetails);
		return "course/course_display.jsp";
	}

	@RequestMapping("/course/success_page/{course_name}/enroll")
	public String getSuccessPage(@PathVariable("course_name") String coursename, HttpSession session, Model m) {
		UserDTO user = (UserDTO) session.getAttribute("user");
		Course course = new Course();
		course.setName(coursename);
		userService.enrollInTheCourse(user, course);
		Course c = courseService.findCourseByName(coursename);
		m.addAttribute("user_name", user.getUsername());
		m.addAttribute("course", c);
		return "success/success_page.jsp";
	}

	@RequestMapping("/home")
	public String getHomePage() {
		return "Home/home_page.jsp";
	}

	@RequestMapping("/about_us")
	public String getAboutsPage() {
		return "about_us/About_us.jsp";
	}

	@RequestMapping("/signup")
	public String signUpPage(@ModelAttribute("user") UserDTO user, Model model) {
		model.addAttribute("ex_message", signupexceptionmessage);
		signupexceptionmessage = "";
		return "signup/signup.jsp";
	}

	@PostMapping(value = "/signup_success")
	public String signUpSuccessPage(@Valid @ModelAttribute("user") UserDTO user, BindingResult result,
			@RequestParam("profile_image") MultipartFile file, Model model) throws IOException {

		
		if (result.hasErrors()) {
			return "signup/signup.jsp";
		} else {
			String filename = StringUtils.cleanPath(file.getOriginalFilename());
			user.setProfile(filename);
			try {
				userService.saveUser(user);
			} catch (UserExistedException ex) {
				signupexceptionmessage = ex.getMessage();
			}
			if (!signupexceptionmessage.equals("")) {
				return "redirect:/signup";
			} else {
				UserDTO u = userentitytodtoconverter(userService.findUser(user.getEmail()), user);
				createImageInFileSystem(file, u, filename);
				return "signup/signup_success.jsp";
			}
		}
	}

	@RequestMapping("/login_success")
	public String getLoginSuccess(@ModelAttribute("user") UserDTO user, HttpSession session, Model model) {
		model.addAttribute("user", user);
		User u = userService.findUser(user.getEmail());
		session.setAttribute("user", userentitytodtoconverter(u, user));
		model.addAttribute("user", session.getAttribute("user"));
		return "login/login_success.jsp";
	}

	@RequestMapping("/logout")
	public String logout(Model model, HttpSession session) {

		model.addAttribute("user", session.getAttribute("user"));
		return "logout/logout.jsp";
	}

	@RequestMapping("/main_logout")
	public String mainlogout(HttpServletRequest req, HttpServletResponse res) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(req, res, auth);
		}

		return "redirect:/home";
	}

	@RequestMapping("/profile")
	public String getProfile(HttpSession session, Model model) {
		UserDTO u = (UserDTO) session.getAttribute("user");
		model.addAttribute("user", u);
		model.addAttribute("ex_message", signupexceptionmessage);
		signupexceptionmessage = "";
		return "profile/profile.jsp";
	}

	@RequestMapping("/update")
	public String geProfiletUpdated(@ModelAttribute("user") UserDTO user, HttpSession session, Model model,
			@RequestParam("profile_image") MultipartFile file) throws IOException {

		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		user.setProfile(filename);
		User u = new User();
		try {
			u = userService.updateUser(user, ((UserDTO) session.getAttribute("user")).getEmail());

		} catch (UserExistedException e) {
			signupexceptionmessage = e.getMessage();
		}
		createImageInFileSystem(file, user, filename);
		UserDTO dto = new UserDTO();
		session.setAttribute("user", userentitytodtoconverter(u, dto));
		return "redirect:/profile";
	}

	private void createImageInFileSystem(MultipartFile file, UserDTO u, String filename) throws IOException {
		String uploadDir = "/profile_images/" + u.getId();
		Path upload = Paths.get(uploadDir);
		if (!Files.exists(upload)) {
			Files.createDirectories(upload);
		}
		try {
			InputStream inputStream = file.getInputStream();
			Path filePath = upload.resolve(filename);
			Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/password")
	public String getPasswordChanged(Model model) {
		model.addAttribute("password_updated", passwordupdated);
		model.addAttribute("password_status", passwordstatemessage);
		model.addAttribute("password_updated_or_not", passwordUpdatedOrNot);
		passwordupdated = false;
		passwordUpdatedOrNot = false;
		return "password/password.jsp";
	}

	@RequestMapping("/password_change")
	public String passwordchange(@RequestParam("old_password") String oldpassword,
			@RequestParam("new_password") String newpassword, HttpSession session, Model model) {

		User u = null;
		UserDTO dto = new UserDTO();
		if (newpassword.length() < 5 || newpassword.length() > 16) {
			passwordstatemessage = "password length should be between 5 and 16";
			return "redirect:/password";
		}
		if (userService.checkPassword(oldpassword, newpassword, ((UserDTO) session.getAttribute("user")).getEmail())) {
			u = userService.updatePassword(oldpassword, newpassword,
					((UserDTO) session.getAttribute("user")).getEmail());
			passwordupdated = true;
			passwordUpdatedOrNot = true;
		} else {
			u = userService.findUser(((UserDTO) session.getAttribute("user")).getEmail());
			passwordUpdatedOrNot = false;
			passwordupdated = true;
		}

		session.setAttribute("user", userentitytodtoconverter(u, dto));
		return "redirect:/password";
	}

	private UserDTO userentitytodtoconverter(User dto, UserDTO u) {
		u.setUsername(dto.getUsername());
		u.setEmail(dto.getEmail());
		u.setPassword(dto.getPassword());
		u.setProfile(dto.getProfile());
		u.setRoles(dto.getRoles());
		u.setCourses(dto.getCourses());
		u.setId(dto.getId());
		return u;
	}
}
