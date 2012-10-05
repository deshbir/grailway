package com.grailway.domain

import grails.converters.JSON

class Assignment {	
	
	String name

	/***********************************
	 * START Offline configurations
	 ***********************************/
	
	static String backboneType = "collection"
	
	static String backboneObject = "AssignmentsCollection"
	
	static JSON initialData() {
		List<Assignment> assignmentList = new ArrayList<Assignment>()
		Assignment assignment = new Assignment()
		assignment.name = "English Assignment"
		assignmentList.add(assignment)
		assignment = new Assignment()
		assignment.name = "Science Assignment"
		assignmentList.add(assignment)
		return assignmentList.collect{ assignmentObj -> [ name: assignmentObj.name ] }  as JSON
	}
	
	/******************************
	 * END Offline configurations
	 *******************************/
}
