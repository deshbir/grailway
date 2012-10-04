package com.grailway.domain

import grails.converters.JSON

class User {
	
	static String backboneType = "model"
	
	static String backboneObject = "UserModel"

	String username
	String password
	
	static constraints = {
	}
	
	def static JSON initialData() {
		User user = new User()
		user.username = "student1"
		user.password = "student1"
		return [ username: user.username, password : user.password ]  as JSON
	}
}
