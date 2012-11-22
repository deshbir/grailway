package com.grailway.domain.authenticate

import com.the6hours.grails.springsecurity.facebook.FacebookUserDomain


class FacebookUser implements FacebookUserDomain {

	long uid
    String accessToken

	static belongsTo = [user: User]

	static constraints = {
		uid unique: true
	}
}