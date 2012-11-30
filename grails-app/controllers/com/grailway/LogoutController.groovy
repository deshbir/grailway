package com.grailway

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

import com.compro.cgrails.CgrailsUtils

class LogoutController {
	
	def after = {
		def referer = request.getHeader("Referer");
		def refererArray = referer.split("/")
		redirect uri: "/" + refererArray[4] + "/"
	}
}
