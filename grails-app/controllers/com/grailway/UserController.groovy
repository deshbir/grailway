package com.grailway

import grails.converters.JSON

class UserController {

	def springSecurityService

	def show = {		
		def user = springSecurityService.currentUser
		render user as JSON
		return		
	}
}