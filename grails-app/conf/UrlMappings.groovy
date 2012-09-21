class UrlMappings {

	static excludes = ["/images/*", "/css/*", "/js/*"]
	
	static mappings = {
		
		//Index page mapping
		"/$skin/$workflow/"(controller:"main")		
		
		"/$skin/$workflow/$controller/$action?/$id?"{
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
