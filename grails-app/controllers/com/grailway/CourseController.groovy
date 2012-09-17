package com.grailway

import grails.converters.JSON

import org.hibernate.HibernateException

import com.grailway.domain.Course


class CourseController {

	def index = {
		render ""
	}
	
    def save = {
		def course = new Course(params)
		try {
			course.save()
			render course as JSON
			return
		} catch(HibernateException e){
			render (text:course.errors,status:500)
			return
		}
	}
		
	def show = {
		
		if(params.id) {
			def course = Course.get(params.id)
			if(course) {
				render course as JSON
				return
			} else {
				render "Course Not found."
				return
			}
		}
		else {
			def allCourses = Course.list()
			render allCourses as JSON
		}
	}
	
	def update = {
		
		if(params.id) {
			def course = Course.get(params.id)
			if(course) {
				course.properties = params['course']
				try {
					course.save()
					render course as JSON
					return
				} catch(HibernateException e){
					render course.errors
					return
				}
			} else {
				render "Course not found."
				return
			}
		}
		else {
			render "Please specify course id to be updated."
		}
	}
	
	def delete = {
		if(params.id) {
			def course = Course.get(params.id)
			if(course) {
				try {
					course.delete()
					render ""
				}catch(HibernateException e){
					render (text:"could not delete course",status:500)
					return
				}
			} else {
				render "Course not found."
				return
			}
		}
		else {
			render "Please specify course id to be deletd."
		}
	}

}
