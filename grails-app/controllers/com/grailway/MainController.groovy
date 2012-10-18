package com.grailway

import com.compro.cgrails.CgrailsUtils


class MainController {
	
	
	def index() {
		redirect (uri:"/" + CgrailsUtils.getSkin() + "/singlepage/index")
		return
	}
	
	def changelocale() {
		render ""
	}
	
}
