package com.example.aspect;

import java.util.Arrays;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.example.exception.CourseExistedExcpetion;
import com.example.model.Course;
import com.example.model.User;

@Aspect
@Component
public class CourseDaoAspect {
	
	private static Logger log = LogManager.getLogger(CourseDaoAspect.class);
	
	@Around("execution(* com.example.dao.CourseDao.*(..))")
	public Object coruseDaoallmethods(ProceedingJoinPoint joinPoint) throws Throwable {
		String methodname = joinPoint.getSignature().getName();
		String msg="Entering the method {0}" +methodname+" args==> {1}"+Arrays.toString(joinPoint.getArgs());
		log.info(msg);
		Object obj = null;
		obj = joinPoint.proceed();
		msg="Leaving the method {0}"+ methodname +" args==> {1}" + Arrays.toString(joinPoint.getArgs());
		log.info(msg);
		return obj;
	}
	
	@AfterReturning(pointcut = "execution(* com.example.dao.CourseDao.*Course(..))",returning = "obj")
	public void courseoperations(JoinPoint joinPoint,Object obj)
	{
		String methodname=joinPoint.getSignature().getName();
		Object[] args=joinPoint.getArgs();
		String msg="";
		if(methodname.equals("addTheCourse"))
		{
			Course course=(Course)args[0];
			 msg="Added The Course Successfully "+course.toString();
			log.info(msg);
		}
		else if(methodname.equals("findTheCourse"))
		{
			Course course=(Course)obj;
			msg="Found the course sccuessfully through the id "+course;
			log.info(msg);
		}
		else if(methodname.equals("getAllCourse"))
		{
			List<Course> courses=(List<Course>)obj;
			msg="Get all the courses :: courses ==>"+courses.toString();
			log.info(msg);
		}
		else if(methodname.equals("deleteCourse"))
		{
			Course course=(Course)obj;
			msg="Delted course successfully ==>"+course.toString();
			log.info(msg);
		}
		else if(methodname.equals("updateCourse"))
		{
			Course course=(Course)obj;
			 msg="Course updated successfully ==>"+course.toString();
			log.info(msg);
		}
	}
	
	@AfterReturning(pointcut = "execution(* com.example.dao.CourseDao.deleteTheUser(..))",returning = "obj")
	public void deltetheuser(JoinPoint joinPoint,Object obj)
	{
		User user=(User)obj;
		String msg="User successfully deleted from the course ==>"+user;
		log.info(msg);
	}
	
	@AfterReturning(pointcut = "execution(* com.example.dao.CourseDao.getEnrolledStudents(..))",returning = "obj")
	public void getEnrolledstudents(JoinPoint joinPoint,Object obj)
	{
		List<User> users=(List<User>)obj;
		String msg="User successfully deleted from the course ==>"+users;
		log.info(msg);
	}
	
	@AfterReturning(pointcut = "execution(* com.example.dao.CourseDao.findCourseByName(..))",returning = "obj")
	public void finCourseByName(JoinPoint joinPoint,Object obj)
	{
		Course course=(Course)obj;
		String msg="Found the Course Successfully through the course name "+course;
		log.info(msg);
	}
	
	@AfterThrowing(pointcut = "execution(* com.example.dao.CourseDao.*Course(..))",throwing = "ex")
	public void afterThrowingmethodcourse(JoinPoint joinPoint,CourseExistedExcpetion ex)
	{
		String methodname=joinPoint.getSignature().getName();
		String msg;
     	if(methodname.equals("addTheCourse"))
		{
     		msg="Error occured during adding the course ==> Message from the exception ="+ex.getMessage();
			log.error(msg);
		}
	}
	

}
