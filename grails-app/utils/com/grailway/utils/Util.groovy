package com.grailway.utils

import com.grailway.Constants

class Util {

	def static getOrientation(String lang) {
		if (Constants.RTL_LANGUAGES.contains(lang)) {
			Constants.RIGHT_TO_LEFT;
		} else {
			Constants.LEFT_TO_RIGHT;
		}
	}
	
}
