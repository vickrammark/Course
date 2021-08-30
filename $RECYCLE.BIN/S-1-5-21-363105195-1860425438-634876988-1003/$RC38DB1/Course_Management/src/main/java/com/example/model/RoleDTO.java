package com.example.model;

public class RoleDTO {
	
	private int id;
	private String authority;
	private User users;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}
	@Override
	public String toString() {
		return "Role [id=" + id + ", authority=" + authority + "]";
	}
	
	

}
