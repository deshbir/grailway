package com.grailway

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

import com.compro.cgrails.CgrailsUtils

class LogoutController {
	
	def after = {
		render ""
	}
}
