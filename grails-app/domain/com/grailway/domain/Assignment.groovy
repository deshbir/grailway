package com.grailway.domain

import grails.converters.JSON

class Assignment {	
	
	static String backboneType = "collection"
	
	static String backboneObject = "AssignmentsCollection"
	
	String name

    static constraints = {
    }
	
	def static JSON initialData() {
		List<Assignment> assignmentList = new ArrayList<Assignment>()
		Assignment assignment = new Assignment()
		assignment.name = "English Assignment"
		assignmentList.add(assignment)
		assignment = new Assignment()
		assignment.name = "Science Assignment"
		assignmentList.add(assignment)
		return assignmentList.collect{ assignmentObj -> [ name: assignmentObj.name ] }  as JSON
	}
}
