package com.example.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class UserDTO implements Serializable{

	private int id;
	@NotNull(message = "Username cannot be empty")
	@Size(max = 10,min =5, message = "Name length should be between 5 and 10")
	private String username;
	
	@NotNull(message = "Email cannot be empty")
	@Email(regexp=".+@.+\\..+",message = "Email format is not correct")
	private String email;
	
	@Size(max = 16,min =5, message = "Password length should be between 5 and 16")
	@NotNull(message = "Password cannot be empty")
	private String password;
	
	private String profile;

	private Set<Role> roles = new HashSet<>();
    private Set<Course> courses = new HashSet<>();

	public Set<Course> getCourses() {
		return courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", profile=" + profile + "]";
	}

	

}
