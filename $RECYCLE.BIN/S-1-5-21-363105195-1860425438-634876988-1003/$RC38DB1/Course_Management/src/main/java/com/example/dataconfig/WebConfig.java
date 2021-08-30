package com.example.dataconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.example.provider.CustomAuthenticationProvider;
import com.example.service.CustomUserDetailService;

@Configuration
@EnableWebSecurity
public class WebConfig extends WebSecurityConfigurerAdapter{
	
	
	@Autowired
	private CustomAuthenticationProvider authenticationProvider;
	
	@Autowired
	@Override
	public UserDetailsService userDetailsService()
	{
		return new CustomUserDetailService();
	}


	
	@Bean
	public CustomUserDetailService detailsService()
	{
		return new CustomUserDetailService();
	}
	

	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.authenticationProvider(authenticationProvider);
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		
		http.authorizeRequests()
		    .antMatchers("/admin").hasRole("admin")
		    .antMatchers("/signup","/home","/signup_success","/login","/app/**")
		    .permitAll()
		    .anyRequest()
		    .authenticated()
		    .and()
		    .formLogin()
		    .loginPage("/login")
		    .usernameParameter("email")
		    .passwordParameter("password")
		    .successForwardUrl("/login_success")
		    .permitAll()
		    .and()
		    .logout()
		    .logoutUrl("/logout")
		    .logoutSuccessUrl("/main_logout")
		    .invalidateHttpSession(true)
		    .clearAuthentication(true);
		
	}
	
	@Override
	@Bean
	protected AuthenticationManager authenticationManager() throws Exception {
		return super.authenticationManager();
	}
	
	
	
}
