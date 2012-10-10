UserModel = new function() {

	var modelObj = null;
	
	var Model = Backbone.Model.extend({
					url: "/" + com.compro.cgrails.APPLICATIONNAME + "/api/user"
				});
	
	this.get = function(){
		if (modelObj == null) {
			modelObj = new Model();
		}
		return modelObj;
    };
	
	
};