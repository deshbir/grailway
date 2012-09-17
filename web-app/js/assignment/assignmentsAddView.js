AssignmentsAddView = new function() {

	var view = null;

	var View = Backbone.View.extend({
			events:{
				"click #addAssignment": "createOnEnter"
			},
			initialize: function(){
				this.render();
			},
			render : function() {
				this.name = this.$("#new-assignment");
			},
		    createOnEnter: function(){
		    	AssignmentsCollection.get().create(
		    			this.newAttributes(),
		    			{
		    				success: function(model, response) {
		    					Backbone.history.navigate("assignments/list", {trigger:true,replace:true});
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
		TemplateManager.get('assignment/addAssignmentForm', function(template){
  		  	var compiledTemplate= Mustache.render(template,"{}");
  		  	$("#main_container").html( compiledTemplate );
	 	  });
		if (view == null) {
			  view = new View({el:"#create-assignment"});
		} else {
			view.setElement("#create-assignment");
			view.render();
		}
	};
};