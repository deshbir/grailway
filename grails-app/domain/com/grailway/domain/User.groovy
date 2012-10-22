package com.grailway.domain

import grails.converters.JSON

class User {	
	def static offlineJsonPayload = new File("web-app/json/offline/user.json").text

	String username
	String password
	
	/***********************************
	 * START Offline configurations
	 ***********************************/
	
	def static String[] offlineCachedUrls() {
		return  ["/api/user/"];
	}
	
	/******************************
	 * END Offline configurations
	 *******************************/
}
