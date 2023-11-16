package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.model.Booking;
import com.example.demo.repository.BookingRepo;
import com.example.demo.repository.Userrepo;
@Service
public class UserServiceImpl implements  UserService {

	@Autowired
	private Userrepo usrrepo;
	@Autowired 
	private BookingRepo bookrepo;
	@Override
	
	public User adduser(User user) {
		
		return usrrepo.save(user);
		
		
	}
	@Override
	public User checklogin(String id, String Password) {
		// TODO Auto-generated method stub
		return usrrepo.checklogin(id, Password);
	}
	@Override
	public Booking newcourier(Booking book) {
		// TODO Auto-generated method stub
		return bookrepo.save(book);
	}
	@Override
	public User viewprofile(String id) {
		// TODO Auto-generated method stub
		return usrrepo.viewprofile(id);
	}
	@Override
	public User checkbook(String oid){
		// TODO Auto-generated method stub
		return usrrepo.checkbook(oid);
	}
	@Override
	public List<Booking> myorders(String id) {
		// TODO Auto-generated method stub
		return bookrepo.myorder(id);
	}
	@Override
	public String deleteorder(String id) {
		// TODO Auto-generated method stub
		 bookrepo.deleteById(id);
		 return "DELETE Sucessfully";
	}
	@Override
	public Optional<User> verifyuser(String id) {
		// TODO Auto-generated method stub
		return usrrepo.findById(id);
	}
	
	

}
