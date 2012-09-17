AssignmentsModel = new function() {

	  var Model = Backbone.Model.extend({
	  					defaults: {
	  						name : ""
	  					},
					    clear: function() {
					      this.destroy();
					    },
					    validate: function( attributes ){
					    	var errors = [];
					    	var name = attributes.name;
				            if (name == "") {errors.push("Assignment Name can't be blank")};
				            if(errors.length == 0) {return null;}
				            else {return errors;}
				        },
				        initialize: function(){
				        	// If we specify error callback in set or save, this event will not be fired.
				            this.bind("error", function(model, error){
				               if (_.isArray(error)) {
				               	    alert(error.join("\n"));
				               } else {
				               		alert("Something unexpected happened and your request could not be completed. Please try again later");
				               }
				            });
				        }
	  				});

  	this.get = function(){
		return Model;
	};
};