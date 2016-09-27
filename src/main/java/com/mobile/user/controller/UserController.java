package com.mobile.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobile.user.entity.User;
import com.mobile.user.service.UserServiceI;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserServiceI service;
	
	@RequestMapping("userLogin")
	@ResponseBody
	public boolean userLogin(User user,HttpServletRequest request){
		int i = service.check(user);
		request.getSession().setAttribute("loginName", user.getLoginName());
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	@RequestMapping("regist")
	@ResponseBody
	public boolean addUser(User user){
		int i = service.addUser(user);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
}
