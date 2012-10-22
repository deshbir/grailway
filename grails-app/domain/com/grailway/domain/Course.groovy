package com.grailway.domain


class Course {	
	def static offlineJsonPayload = new File("web-app/json/offline/courses.json").text
	
	String name	

	/***********************************
	 * START Offline configurations
	 ***********************************/	
	
	def static String[] offlineCachedUrls() {
		return  ["/api/course/"];
	}
	
	/******************************
	 * END Offline configurations
	 *******************************/
}