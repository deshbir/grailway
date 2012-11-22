class UrlMappings {

	static excludes = ["/images/*", "/css/*", "/js/*"]
	
	static mappings = {
		
		"/login/$action?/$id?"(controller:"login")	
		"/logout/$action?/$id?"(controller:"logout")
		
		//Index page mapping
		"/$skin/"(controller:"singlepage")		
		
		"/$skin/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}		
			
		
		//REST API(s) for Data
		"/api/assignment/$id?"(resource:"assignment")
		"/api/course/$id?"(resource:"course")
		"/api/user/$id?"(resource:"user")
		
		
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
