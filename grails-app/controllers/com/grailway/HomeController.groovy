package com.grailway

class HomeController {
	
	def index = {
		render (view:"/home", model:[:])
	}   
}
