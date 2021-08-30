package com.example.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GlobalExcpetionHnadlerController implements ErrorController {

	@RequestMapping("/error")
	public String getErrorPage(HttpServletRequest req) {
		Object errorcode = req.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

		if (errorcode != null) {
			int code = Integer.parseInt(String.valueOf(errorcode));
			if (code == (HttpStatus.NOT_FOUND.value())) {
				return "Error/page_not_page.jsp";
			} else if (code == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
				return "Error/internal_server_error.jsp";
			} else {
				return "Error/any_error.jsp";
			}
		} else {
			return "Error/any_error.jsp";
		}
	}
}
