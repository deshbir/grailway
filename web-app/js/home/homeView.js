HomeView = new function() {

	var router = null;
	
	var Router = Backbone.Router.extend({
		routes: {
	      'home':'home',
	      'home/login':'login'
	    },	    
	    home : function() {
	    	HomeView.initialize()
	    },
	    login : function() {
	    	var username = $("#username").val(); 
	    	var password = $("#password").val();
	 		$.ajax({
		    	url: "/" + com.compro.cgrails.APPLICATIONNAME + "/" + com.compro.cgrails.SKIN + "/main/login",
		    	type: "POST",
		    	data:{ username: username, password: password },
		        success: function() {
		        	window.location.href = "/" + com.compro.cgrails.APPLICATIONNAME + "/" + com.compro.cgrails.SKIN + "/courses/";
		        }
		    });
	    }
	});
	this.initialize = function(){
		if (router == null) {
			router = new Router();
		}
		TemplateManager.get('home/homeContainer', function(template){
			UserModel.get().fetch({
			    success: function(model, response){
			    	var compiledTemplate = Mustache.render(template,UserModel.get().toJSON());
			 	    $("#main_container").html(compiledTemplate);
			    }
			  })
	 		
		 }); 
	};
	this.routerInitialize = function(){
		router = new Router();   
	};
};