cgrails {
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
}