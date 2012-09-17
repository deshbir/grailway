package com.grailway

import grails.converters.JSON

import com.grailway.domain.User

class UserController {

	
	def show = {
		def user
		if(params.id) {
			user = User.get(params.id)
			if(user) {
				render user as JSON
				return
			} else {
				render "Not found."
				return
			}
		}
		else {
			user = session["user"]
			render user as JSON
			return
		}
	}
	
}
