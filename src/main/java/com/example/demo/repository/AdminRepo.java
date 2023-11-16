package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Admin;
import com.example.demo.model.User;

@Repository
public interface AdminRepo extends CrudRepository<Admin, String> {
	@Query("select a from Admin a where a.username=?1 and a.password=?2")
	public Admin checkadmin(String username,String password);
	
	

}
