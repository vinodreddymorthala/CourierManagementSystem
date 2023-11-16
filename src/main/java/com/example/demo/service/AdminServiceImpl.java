package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.model.User;
import com.example.demo.model.Booking;
import com.example.demo.repository.AdminRepo;
import com.example.demo.repository.BookingRepo;
import com.example.demo.repository.Userrepo;

@Service
public class AdminServiceImpl implements AdminService {
     
	@Autowired
	private AdminRepo repo;
	
	@Autowired
	private Userrepo usrrepo;
	
	@Autowired
	private BookingRepo bookrepo;
	
	
	@Override
	public Admin checkadmin(String username, String password) {
		// TODO Auto-generated method stub
		return repo.checkadmin(username, password);
		
	}

	@Override
	public List<User> viewallusers() {
		// TODO Auto-generated method stub
		return (List<User>) usrrepo.findAll();
	}

	@Override
	public List<Booking> viewallorders() {
		// TODO Auto-generated method stub
		return (List<Booking>) bookrepo.findAll();
	}

	

}
