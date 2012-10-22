package com.grailway.domain


class Assignment {	
	
	def static offlineJsonPayload = new File("web-app/json/offline/assignments.json").text
	
	String name

	/***********************************
	 * START Offline configurations
	 ***********************************/	
	
	def static String[] offlineCachedUrls() {
		return  ["/api/assignment/"];
	}
	
	/******************************
	 * END Offline configurations
	 *******************************/
}
