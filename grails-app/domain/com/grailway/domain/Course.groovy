package com.grailway.domain

import grails.converters.JSON

class Course {	
	
	String name	

	/***********************************
	 * START Offline configurations
	 ***********************************/
	
	static String dataAPI = "/api/course"
	
	static JSON initialData() {
		List<Course> courseList = new ArrayList<Course>()
		Course course = new Course()
		course.name = "English Course"
		courseList.add(course)
		course = new Course()
		course.name = "Science Course"
		courseList.add(course)
		return courseList.collect{ courseObj -> [ name: courseObj.name ] }  as JSON
	}
	
	/******************************
	 * END Offline configurations
	 *******************************/
}