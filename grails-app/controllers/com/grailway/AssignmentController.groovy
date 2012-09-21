package com.grailway

import grails.converters.JSON

import org.hibernate.HibernateException

import com.grailway.domain.Assignment


class AssignmentController {
	
	def index = {
		render (view:"/assignment", model:[:])
	}

    def save = {
		def assignment = new Assignment(params)	
		try {
			assignment.save()
			render assignment as JSON
			return
		} catch(HibernateException e){
			render (text:assignment.errors,status:500)
			return
		}
	}
		
	def show = {	
		if(params.id) {
			def assignment = Assignment.get(params.id)
			if(assignment) {
				render assignment as JSON
				return
			} else {
				render "Not found."
				return
			}
		}
		else {
			def allAssignment = Assignment.list()
			render allAssignment as JSON
		}
	}
	
	def update = {		
		if(params.id) {
			def assignment = Assignment.get(params.id)
			if(assignment) {
				assignment.properties = params['assignment']
				try {
					assignment.save()
					render assignment as JSON
					return
				} catch(HibernateException e){
					render assignment.errors
					return
				}
			} else {
				render "Assignment not found."
				return
			}
		}
		else {
			render "Please specify assignment id to be updated."
		}
	}
	
	def delete = {
		if(params.id) {
			def assignment = Assignment.get(params.id)
			if(assignment) {
				try {
					assignment.delete()
					render ""
				}catch(HibernateException e){
					render (text:"could not delete assignment",status:500)
					return
				}
			} else {
				render "Assignment not found."
				return
			}
		}
		else {
			render "Please specify assignment id to be updated."
		}
	}

}
