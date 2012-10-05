package com.grailway

import com.compro.cgrails.CgrailsUtils
import com.compro.cgrails.CgrailsConstants
import com.grailway.domain.User


class MainController {
	
	
	def index() {
		if (CgrailsUtils.getWorkflow() == CgrailsConstants.WORKFLOW_TRADITIONAL) {
			redirect (uri:"/" + CgrailsUtils.getSkin() + "/"
					+ CgrailsUtils.getWorkflow() + "/home/")
			return
		} else {
			render (view:"/singlepage", model:[:])
		}
	}
	
	def changelocale() {
		render ""
	}
	
}
