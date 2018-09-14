package com.ModelMadness.dao;
import java.util.List;

import com.ModelMadness.model.User;



public interface UserDao {
	
	//declare the methods
	
	//what type of operations you are going to do for user.
	
	
	//Operations
	//1) create/register  - save
	//2) update the user details  - update
	//3) validate the credentials  -  validate
	//4) get all users   - list
	
	
	//declare the methods with proper signature
	//access_specifier return_tye methodName( parameter_list)  throws exception_list
	
	
	
	// create/register  - save
	
	public  boolean insert(User user);
	
	// update the user details  - update
	public boolean update(User user);
	
	// validate the credentials  -  validate
	//WE are going to use spring security in future.
	//we can delete this method. after using spring security.
	public boolean validate(String userid, String password);
	
	// get all users   - list
	
	public List<User>     list();
	
	
	//get user details based on userID
	
	public User get(String userid);
	public int saveOrUpdate(User user);
	
	}


