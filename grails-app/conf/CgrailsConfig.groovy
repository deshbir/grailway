cgrails {
	skinning {
		baseskin = "default"
		skins {
			skin1 { parent = "default" }
			skin2 { parent = "default" }
		}		
	}
	less {
		//Array of Less Files to compile.
		files = ["styles"]
	}
	templates {
		url = "/main/template/"
		useConfiguration = false
	}
	javascriptMVC = "backbone"
	models {
		backbone {
			"com.grailway.domain.User" {
				backboneObject = "UserModel"
				type = "model"
			}
			"com.grailway.domain.Course" {
				backboneObject = "CoursesCollection"
				type = "collection"
			}
			"com.grailway.domain.Assignment" {
				backboneObject = "AssignmentsCollection"
				type = "collection"
			}
		}
	}
	templateList = [
	'templates/home/home',
	'templates/course/addCourseForm',
	'templates/course/courseContainer',
	'templates/course/courseItem'
	]
}	
