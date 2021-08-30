package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CcourseController {

	@RequestMapping("/introduction_to_c")
	public String getIntro()
	{
		return "c/what_is_c_language.jsp";
	}
	
	@RequestMapping("/history_of_c")
	public String getHistory()
	{ 
		return "c/history_of_c.jsp";
	}
	
	@RequestMapping("/features_of_c")
	public String getFeaturesOfC()
	{
		return "c/features_of_c.jsp";
	}
	
	@RequestMapping("/install_c")
	public String getInstallC()
	{
		return "c/install_c.jsp";
	}
	
	@RequestMapping("/first_c_program")
	public String getFirstCProgram()
	{
		return "c/first_c_program.jsp";
	}
	
	@RequestMapping("/compilation_process_in_c")
	public String getCompilationProcessinC()
	{
		return "c/compilation_process_in_c.jsp";
	}
	
	@RequestMapping("/printf_scanf")
	public String getprintfscanf()
	{
		return "c/printf_scanf.jsp";
	}
	
	@RequestMapping("/variables_in_c")
	public String getVariablesinC()
	{
		return "c/variables_in_c.jsp";
	}
	
	@RequestMapping("/data_types_in_c")
	public String getDataTypesinc()
	{
		return "c/data_types_in_c.jsp";
	}
	
	@RequestMapping("/keywords_in_c")
	public String getKeywordsinc()
	{
		return "c/keywords_in_c.jsp";
	}
	
}
