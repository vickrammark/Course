package com.example.aspect;

import java.util.Arrays;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.example.exception.UserExistedException;
import com.example.model.User;

@Aspect
@Component
public class UserDaoAspect {

	private static Logger log = LogManager.getLogger(UserDaoAspect.class);

	@AfterThrowing(pointcut = "execution(* com.example.dao.UserDao.*User(..))", throwing = "ex")
	public void userAlreadyExistafterthrowing(JoinPoint joinPoint, UserExistedException ex) {
		Object[] args = joinPoint.getArgs();
		String methodname=joinPoint.getSignature().getName();
		String msg="";
		if(methodname.equals("saveUser"))
		{
		User user = (User) args[0];
		msg="User with the same email already existed ---> the eamil is -->" + user.getEmail() + " used by --->"
				+ user.getUsername() + " Message from the user dao class ==>" + ex.getMessage();
		log.error(msg);
		}
		else if(methodname.equals("updateUser"))
		{
			User user=(User)args[0];
			msg="Profile cannot be updated . User wtih the same email already existed email==>"+user.getEmail()+" for the user "+user;
			log.error(msg);
		}
		else if(methodname.equals("findUser"))
		{
			String email=(String)args[0];
			msg="Cannot find any user with email ==>"+email;
			log.error(msg);
		}
	}
	

	@Around("execution(* com.example.dao.UserDao.*(..))")
	public Object userSaving(ProceedingJoinPoint joinPoint) throws Throwable {
		String msg="";
		String methodname = joinPoint.getSignature().getName();
		msg="Entering the method " + methodname + " args==>" + Arrays.toString(joinPoint.getArgs());
		log.info(msg);
		Object obj = null;
		obj = joinPoint.proceed();
		msg="Leaving the method " + methodname + " args==>" + Arrays.toString(joinPoint.getArgs());
		log.info(msg);

		return obj;
	}

	@AfterReturning(pointcut ="execution(* com.example.dao.UserDao.*User(..))",returning ="obj")
	public void useraftersaving(JoinPoint joinPoint,Object obj) {
		String methodname=joinPoint.getSignature().getName();
		String msg="";
		Object[] args = joinPoint.getArgs();
		if(methodname.equals("saveUser"))
		{
			User user = (User) args[0];
			msg="User successfully saved ---> " + user;
			log.info(msg);			
		}
		else if(methodname.equals("updateUser"))
		{
			User user=(User)obj;
			msg="User successfully updated -->"+user;
			log.info(msg);
		}
		else if(methodname.equals("findUser"))
		{
			User user=(User)obj;
			msg="Successfully found the user --->"+user;
			log.info(msg);
		}
	}
	
	
	
}
