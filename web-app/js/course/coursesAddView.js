CoursesAddView = new function() {

	var view = null;

	var View = Backbone.View.extend({
			events:{
				"click #addCourse": "createOnEnter"
			},
			initialize: function(){
				this.render();	
			},
			render : function() {
				this.name = this.$("#new-course");
			},
		    createOnEnter: function(){
		    	CoursesCollection.get().create(
		    			this.newAttributes(),
		    			{
		    				success: function(model, response) {
		    					Backbone.history.navigate("courses/list", {trigger:true,replace:true});
		    				}
		    			}
		    		);
		    },
		    newAttributes: function() {
			      return {
			        name	: 	this.name.val(),
			    };
			 }
		});

	this.initialize = function() {
		TemplateManager.get('course/addCourseForm', function(template){
  		  	var compiledTemplate= Mustache.render(template,"{}");
  		  	$("#main_container").html( compiledTemplate );
	 	  });
		if (view == null) {
			  view = new View({el:"#create-course"});
		} else {
			view.setElement("#create-course");
			view.render();
		}
	};
};