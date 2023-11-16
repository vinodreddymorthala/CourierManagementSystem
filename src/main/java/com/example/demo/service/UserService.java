package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service; 

import com.example.demo.model.User;
import com.example.demo.model.Booking;


public interface UserService {
	public User adduser(User user);
	public User checklogin(String id,String Password);
	public Booking newcourier(Booking book);
	public User viewprofile(String id);
	public User checkbook(String oid);
	public List<Booking> myorders(String id);
	public String deleteorder(String id);
	public Optional<User> verifyuser(String email);
	
}
