package com.compro.cgrails

class SinglepageController {
	
	def index() {
		render (view:"/ajaxlogin", model:[:])
	}	
	
	def assignment() {
		render (view:"/assignment", model:[:])
	}
	
	def course() {
		render (view:"/course", model:[:])
	}
}
