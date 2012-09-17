UserModel = new function() {

	var modelObj = null;
	
	var Model = Backbone.Model.extend({
					url: "/" + com.compro.cgrails.APPLICATIONNAME + "/api/user"
				});
	
	this.get = function(){
		if (this.modelObj == null) {
			this.modelObj = new Model();
		}
		return this.modelObj;
    };
	
	
};