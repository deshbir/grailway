package com.compro.grailway;

import grails.converters.JSON
import net.sf.json.JSONObject

import org.springframework.security.core.userdetails.UserDetails

import com.grailway.domain.authenticate.FacebookUser
import com.grailway.domain.authenticate.User
import com.the6hours.grails.springsecurity.facebook.FacebookAuthDao
import com.the6hours.grails.springsecurity.facebook.FacebookAuthToken

class FacebookAuthService {
	FacebookAuthDao facebookAuthDao
	void prepopulateAppUser(User user, FacebookAuthToken token) {
		def accessToken  = token.accessToken?.accessToken
		String authUrl = "https://graph.facebook.com/me?access_token=$accessToken"
		URL url = new URL(authUrl)
		JSONObject me = JSON.parse(url.readLines().first())
        user.password = me.first_name.toLowerCase()
        user.username = me.username
        user.accountExpired = false
        user.accountLocked = false
        user.enabled = true
        user.passwordExpired = false
	}
	
	
}
