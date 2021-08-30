package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PythonCourseController {
	
	@RequestMapping("/pythonfeatures")
	public String pythonfeatures() {
		return "python/pythonfeatures.jsp";
	}

	@RequestMapping("/pythonhistory")
	public String pythonhistory() {
		return "python/pythonhistory.jsp";
	}

	@RequestMapping("/pythonapplications")
	public String pythonapplications() {
		return "python/Pythonapplications.jsp";
	}

	@RequestMapping("/pythoninstall")
	public String howtoinstallpython() {
		return "python/pythoninstall.jsp";
	}

	@RequestMapping("/pythonexample")
	public String pythonexample() {
		return "python/pythonexample.jsp";
	}

	@RequestMapping("/pythonvariables")
	public String pythonvariables() {
		return "python/pythonvariables.jsp";
	}

	@RequestMapping("/pythondatatypes")
	public String pythondatatypes() {
		return "python/pythondatatypes.jsp";
	}

	@RequestMapping("/pythonliterals")
	public String pythonliterals() {
		return "python/pythonliterals.jsp";
	}

	@RequestMapping("/pythonkeywords")
	public String pythonkeywords() {
		return "python/pythonkeywords.jsp";
	}

	@RequestMapping("/pythonoperators")
	public String pythonoperators() {
		return "python/pythonoperators.jsp";
	}

	@RequestMapping("/pythoncomments")
	public String pythoncomments() {
		return "python/pythoncomments.jsp";
	}
	
}
