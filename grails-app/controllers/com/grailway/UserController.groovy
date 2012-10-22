package com.grailway

import grails.converters.JSON
import groovy.json.JsonSlurper

import com.compro.cgrails.CgrailsUtils
import com.grailway.domain.User

class UserController {

	
	def show = {
		if(CgrailsUtils.getWorkflow() == "offline") {
			def slurper = new JsonSlurper()
			def offlineUser = slurper.parseText(User.offlineJsonPayload)			
			render offlineUser.user  as JSON
			return
		}
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
