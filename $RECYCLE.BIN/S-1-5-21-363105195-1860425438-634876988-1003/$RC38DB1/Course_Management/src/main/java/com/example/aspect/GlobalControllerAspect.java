package com.example.aspect;

import java.util.Arrays;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class GlobalControllerAspect {

	Logger log = LogManager.getLogger(GlobalControllerAspect.class);


	
	@Around("execution(* com.example.controller.*.*(..))")
	public Object allmethodcontroller(ProceedingJoinPoint joinPoint)
	{
		String methodname=joinPoint.getSignature().getName();
		Object[] args=joinPoint.getArgs();
		String msg="Entering the method "+methodname+" with args "+Arrays.toString(args);
		log.info(msg);
		Object obj=null;
		try {
			obj=joinPoint.proceed();
		} catch (Throwable e) {
			msg="Error in proceeding the method "+methodname +" Excpetion message ==>"+e.getMessage();
			log.error(msg);
		}
		msg="Leaving the method "+methodname+" with args "+Arrays.toString(args);
		log.info(msg);
		return obj;
	}
	

}
