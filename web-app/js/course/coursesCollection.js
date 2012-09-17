CoursesCollection = new function() {

	  var collection = null;

	  var Collection = Backbone.Collection.extend({
		  	model: CoursesModel.get(),
	  		url: "/" + com.compro.cgrails.APPLICATIONNAME + "/api/course",
		    comparator: function(assignment) {
		      return assignment.get('id');
		    }
	  });

 	  this.get = function(){
			if (this.collection == null) {
				this.collection = new Collection();
			}
			return this.collection;
	  };
};
