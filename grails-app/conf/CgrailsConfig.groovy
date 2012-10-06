cgrails {
	skinning {
		baseskin = "default"
		defaultskin = "default"
		skins {
			skin1 { parent = "default" }
			skin2 { parent = "default" }
		}
	}
	workflows {
		defaultwokflow = "traditional"
	}
	less {
		//Array of Less Files to compile.
		files = ["styles"]
	}
	templates {
		useConfiguration = false
		templateList = [
		   'home/homeContainer',
		   'course/addCourseForm',
		   'course/courseContainer',
		   'course/courseItem'
		]
	}
	javascriptMVC = "backbone"	
}