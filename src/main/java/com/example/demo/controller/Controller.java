package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.User;
import com.example.demo.model.Booking;
import com.example.demo.service.AdminService;
import com.example.demo.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	private AdminService serv;
	
	@Autowired
	private UserService usrserv;
	
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	@GetMapping("/adminlogin")
	public ModelAndView adminlogin() {
		
		ModelAndView mv = new ModelAndView("adminlogin");
		return mv;
	}
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession sess =request.getSession();
		sess.invalidate();
		return "index";
		
	}
	@GetMapping("/admincontrol")
	public ModelAndView admincontrol() {
		
		ModelAndView mv = new ModelAndView("admincontrol");
		return mv;
	}
	@GetMapping("/viewusers")
	public ModelAndView viewusers() {
		
		ModelAndView mv = new ModelAndView("viewusers");
		List<User> usr = serv.viewallusers();
		mv.addObject("usr",usr);
		return mv;
	}
	@GetMapping("/userreg")
	public ModelAndView userreg() {
		ModelAndView mv = new ModelAndView("register","usr",new User());
		return mv;
	}
	@GetMapping("/profile")
	public ModelAndView profile() {
		ModelAndView mv = new ModelAndView("profile");
		return mv;
	}
	@GetMapping("/viewprofile")
	public ModelAndView ViewProfile(HttpServletRequest request) {
		HttpSession sess = request.getSession();
		String id =(String) sess.getAttribute("id");
		User usr=  usrserv.viewprofile(id);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewprofile");
		mv.addObject("usr",usr);
		return mv;
	}
	
	
	
	@PostMapping("/adduser")
	public ModelAndView adduser(@Valid  @ModelAttribute("usr") User user,BindingResult result,HttpServletRequest req) {
//		
		ModelAndView mv = new ModelAndView();
    	mv.setViewName("register");
		if(result.hasErrors()) {
			
			mv.addObject("name","Please Enter Details Properly");
		}
		else {
			String id=req.getParameter("id");
			Optional<User> ur=usrserv.verifyuser(id);
	if(ur.isPresent()) {
		mv.addObject("name","User Name is Already Taken");
		
	}else {
		
		System.out.println(user);
		usrserv.adduser(user);
		mv.addObject("name","Register Successfully");
		
	}
			
		}
		return mv;
		
	}
	@GetMapping("/booking")
	public ModelAndView booking() {
		ModelAndView mv = new ModelAndView("booking");
		return mv;
		
	}
	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("about");
		return mv;
		
	}
	@GetMapping("/pricing")
	public ModelAndView pricing() {
		ModelAndView mv = new ModelAndView("pricing");
		return mv;
		
	}
	
	@GetMapping("/userlogin")
	public ModelAndView userlogin() {
		
		ModelAndView mv = new ModelAndView("userlogin");
		return mv;
	}
	
	@PostMapping("/checkadmin")
	public ModelAndView checkadmin(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Admin admin = serv.checkadmin(username, password);
		
		if(admin!=null)
		{
			
			mv.setViewName("admincontrol");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("error", "Login Failed");
		}
		return mv;
	}
	
	@PostMapping("/checklogin")
	public ModelAndView checklogin(HttpServletRequest request,HttpSession sess)
	{
		ModelAndView mv =  new ModelAndView();
		request.getSession();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		User usr=usrserv.checklogin(id, password);
		
		if(usr!=null)
		{
			if(sess.isNew()) {
				mv.setViewName("userlogin");
				mv.addObject("error","Session has Expired");
			}
			else {
				sess.setMaxInactiveInterval(30);
				sess.setAttribute("id", id);
				System.out.println("id:" + id);
				mv.addObject("log","LOG OUT");
				mv.setViewName("index");
				mv.addObject("name", id);
			}
			
			System.out.println(sess.isNew());
			
			
		}
		else
		{
			mv.setViewName("userlogin");
			mv.addObject("error", "Login Failed");
		}
		return mv;
	}
	
	@RequestMapping("/pricecal")
	public ModelAndView calprice(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String dis=request.getParameter("distance");
		String wi=request.getParameter("weight");
		int ans=Integer.parseInt(dis)*2+Integer.parseInt(wi);
		System.out.println(dis+" "+wi);
		mv.setViewName("pricing");
		mv.addObject("ans", ans);
		
		
		return mv;
		
		
	}
	
	
	
	
	@GetMapping("/sendcourier")
	public ModelAndView sendcourier() {
		ModelAndView mv = new ModelAndView("booking","cour",new Booking());
		return mv;
	}
	
	@PostMapping("/newcourier")
	public ModelAndView newcourier(@ModelAttribute("cour") Booking book) {
		String oid=book.getId();
		User usr=usrserv.checkbook(oid);
		
		ModelAndView mv = new ModelAndView("booking","cour",new Booking());
		
		if(usr!=null)
		{
			usrserv.newcourier(book);
			mv.setViewName("booking");
			mv.addObject("name","Delivery Boy will pick Your Courier");
		}
		else
		{
			mv.setViewName("booking");
			mv.addObject("name","Please Enter Correct Username");
		}
		return mv;
		
	}
	
	@GetMapping("/vieworders")
	public ModelAndView vieworders() {
		
		ModelAndView mv = new ModelAndView("vieworders");
		List<Booking> cour = serv.viewallorders();
		mv.addObject("cour",cour);
		return mv;
	}
	
	@GetMapping("/myorders")
	public ModelAndView myorders(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession sess = request.getSession();
		String id =(String) sess.getAttribute("id");
			
		List<Booking> cour =usrserv.myorders(id);
		
		System.out.println(cour);	
		if(cour!=null)
		{
			mv.setViewName("myorders");
			mv.addObject("name","Your Orders");
			mv.addObject("cour",cour);
		}
		else
		{
			mv.setViewName("myorders");
			mv.addObject("name","You no Orders");
		}
		return mv;
		
	}
	
	@GetMapping("/deleteorder")
	public ModelAndView deleteorder(HttpServletRequest request) {
		HttpSession sess = request.getSession();
		ModelAndView mv = new ModelAndView();
		String id =(String) sess.getAttribute("id");
		String str =usrserv.deleteorder(id);
		if(str=="DELETE Sucessfully") {
			mv.setViewName("myorders");
			
		}
		return mv;
		
		
	}
	
	
}
