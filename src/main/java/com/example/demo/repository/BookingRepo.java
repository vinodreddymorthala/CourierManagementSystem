package com.example.demo.repository;
 
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Booking;
import com.example.demo.model.User;

@Repository
public interface BookingRepo extends CrudRepository<Booking, String> {
	
	@Query("select m from Booking m where m.id=?1")
	public List<Booking> myorder(String id);
	

}