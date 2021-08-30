package com.example.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Inheritance
public class User implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull(message = "Username cannot be empty")
	@Size(max = 10,min =5, message = "Name length should be between 5 and 10")
	@Column(name="username",nullable = false)
	private String username;
	
	@NotNull(message = "Email cannot be empty")
	@Email(regexp=".+@.+\\..+",message = "Email format is not correct")
	@Column(name="email",nullable = false,unique = true)
	private String email;
	
	@NotNull(message = "Password cannot be empty")
	@Column(name="password",nullable = false)
	private String password;
	
	@Column(name="profile",nullable = false)
	private String profile;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "users", fetch = FetchType.EAGER)
	private Set<Role> roles = new HashSet<>();

	@ManyToMany(mappedBy = "users")
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
		return "User [id=" + id + ", username=" + username + ", email=" + email +
				 ", profile=" + profile + "]";
	}
	


}
