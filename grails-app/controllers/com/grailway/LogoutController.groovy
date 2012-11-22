package com.grailway

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

import com.compro.cgrails.CgrailsUtils

class LogoutController {
	
	def after = {
		// TODO put any pre-logout code here
		redirect uri: "/" + CgrailsUtils.getSkin() + "/"
	}
}
