modules = {
	libs {
		dependsOn 'cgrailsLibs'
		resource url:'js/libs/bootstrap.js'
		resource url:'js/libs/mustache.js'
		resource url:'js/utils/util.js'
	}
	login {
		dependsOn 'cgrailsLibs'
		resource url:'js/libs/bootstrap.js'
		resource url:'js/utils/util.js'
	}
	home {
		dependsOn:'libs'
		resource url:'js/home/homeView.js'
		resource url:'js/user/userModel.js'
	}
	assignments {
		dependsOn 'libs'
		resource url:'js/assignment/assignmentsModel.js'
		resource url:'js/assignment/assignmentsCollection.js'
		resource url:'js/assignment/assignmentsView.js'
		resource url:'js/assignment/assignmentsAddView.js'
	}
	courses {
		dependsOn 'libs'
		resource url:'js/course/coursesModel.js'
		resource url:'js/course/coursesCollection.js'
		resource url:'js/course/coursesView.js'
		resource url:'js/course/coursesAddView.js'
	}	
}