package com.compro.cgrails

class SinglepageController {
	
	
	def index() {
		render (view:"/home", model:[:])
	}	
	
	def assignment() {
		render (view:"/assignment", model:[:])
	}
	
	def course() {
		render (view:"/course", model:[:])
	}
}
