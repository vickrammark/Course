package com.example.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.model.Role;
import com.example.model.UserDTO;

public class UserDetailsWrapperClass implements UserDetails {

	private UserDTO user;

	public UserDetailsWrapperClass(UserDTO user) {
		super();
		this.user = user;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		Set<Role> roles=user.getRoles();
		List<SimpleGrantedAuthority> authorities=new ArrayList<>();
		for(Role role:roles)
		{
			authorities.add(new SimpleGrantedAuthority(role.getAuthority()));
		}

		return authorities;
	}

	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
