package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.example.model.User;
import com.example.model.UserDTO;

public class CustomUserDetailService implements UserDetailsService {



	@Autowired
	private UserService service;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		User user = service.findUser(email);
		UserDTO dto=new UserDTO();
		if(user!=null)
		{
		return new UserDetailsWrapperClass(userentitytodtoconverter(user, dto));
		}
		else
		{
			return null;
		}
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
