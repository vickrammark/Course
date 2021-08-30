package com.example;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc 
@ComponentScan(basePackages = "com.example")
public class MvcConfiguration implements WebMvcConfigurer {

	@Bean
	InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix("");
		return viewResolver;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/app/**", "/images/**","/profile/**").addResourceLocations("classpath:/static/image/")
				.addResourceLocations("classpath:/static/css/").addResourceLocations("classpath:/static/js/")
				.addResourceLocations("file:/D:/course_images/").addResourceLocations("file:/D:/profile_images/");

	}

}