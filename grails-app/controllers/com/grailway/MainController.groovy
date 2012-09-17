package com.grailway

import com.compro.cgrails.CgrailsUtils
import com.compro.cgrails.CgrailsConstants
import com.grailway.domain.User


class MainController {
	
	def login() {
		render (view:"login",model:[:])
	}
	
	def index() {
		if (CgrailsUtils.getWorkflow() == CgrailsConstants.WORKFLOW_TRADITIONAL) {
			redirect (uri:"/" + CgrailsUtils.getSkin() + "/"
					+ CgrailsUtils.getWorkflow() + "/home/")
			return
		} else {
			render (view:"singlepage_container",model:[:])
		}
	}
	
	def changelocale() {
		render ""
	}
	
	def template() {
		render (view:"/"+ params.path,model:[:])
	}
	
	
	def authenticate() {
		def username = params.username
		def password = params.password
		User user = new User(username:username, password:password)
		session["user"]= user
		redirect (uri:"/" + CgrailsUtils.getSkin() + "/"
						+ CgrailsUtils.getWorkflow() + "/")
		return
	}
	
	
	def logout() {
		if(session.user) {
			session.user = null
		}	
		redirect (uri:"/" + CgrailsUtils.getSkin() + "/"
						+ CgrailsUtils.getWorkflow() + "/main/login")
		return
	}


}
