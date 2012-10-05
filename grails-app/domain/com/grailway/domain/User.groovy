package com.grailway.domain

import grails.converters.JSON

class User {	

	String username
	String password
	
	/***********************************
	 * START Offline configurations
	 ***********************************/
	
	
	static JSON initialData() {
		User user = new User()
		user.username = "student1"
		user.password = "student1"
		return [ username: user.username, password : user.password ]  as JSON
	}
	
	/******************************
	 * END Offline configurations
	 *******************************/
}
