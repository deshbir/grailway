package com.grailway

import com.compro.cgrails.CgrailsUtils
import com.grailway.domain.User



class AccountsController {
	
	def login() {
		render (view:"login",model:[:])
	}
	
	def authenticate() {
		def username = params.username
		def password = params.password
		User user = new User(username:username, password:password)
		session["user"]= user
		redirect (uri:"/" + CgrailsUtils.getSkin() + "/")
		return
	}
	
	
	def logout() {
		if(session.user) {
			session.user = null
		}
		redirect (uri:"/" + CgrailsUtils.getSkin() + "/accounts/login")
		return
	}

}
