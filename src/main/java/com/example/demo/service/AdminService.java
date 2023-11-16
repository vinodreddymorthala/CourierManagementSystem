package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Admin;
import com.example.demo.model.User;
import com.example.demo.model.Booking;

public interface AdminService {
	public Admin checkadmin(String username,String password);
	public List<User> viewallusers();
	public List<Booking> viewallorders();
	

}
