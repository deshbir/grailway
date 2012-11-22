Authenticate = new function() {
	this.authAjax = function(){
		$("#loginErrorMessage").hide();
		var form = document.ajaxLoginForm; 
		$.ajax({
 			url: form.action,
 			type: 'POST',
	    	data: { 
	    		j_username: form.j_username.value,
	    		j_password:  form.j_password.value
	    	},
	        success: function(response) {
				if (response.success) { 
					TemplateManager.get('authenticate/home', function(template){
						UserModel.get().fetch({
							success: function(model, response){
								var compiledTemplate = Mustache.render(template,UserModel.get().toJSON());
								$("#main_container").html(compiledTemplate);
							}
						});						
				 	  });
				} else if (response.error) { 
					$("#loginErrorMessage").show();
					$("#loginErrorMessage").html("<span class='errorMessage'>" + response.error + "</span>");
				} else { 
					$("#loginErrorMessage").show();
					$("#loginErrorMessage").html(response); 
				} 
	        }
	    });		    
  	},
  	this.initialize = function(){
		TemplateManager.get('authenticate/home', function(template){
			$("#main_container").html(template);				
	 	 },{cache:false});
  	},
  	this.loginWithFacebook = function(){
		FB.login(function(response) {
		   if (response.authResponse) {
			   TemplateManager.get('authenticate/home', function(template){
					UserModel.get().fetch({
						success: function(model, response){
							var compiledTemplate = Mustache.render(template,UserModel.get().toJSON());
							$("#main_container").html(compiledTemplate);
						}
					});						
			 	});
		   } else {
			   $("#loginErrorMessage").show();
			   $("#loginErrorMessage").html("<span class='errorMessage'>User cancelled login or did not fully authorize</span>");  
		   }
		 },{scope: 'email,user_likes'});		
	} ,
	this.logout = function(){
		FB.getLoginStatus(function(response) {
		  if (response.status === 'connected') {
			  FB.logout(function() {				 
                  window.location.href = com.compro.cgrails.REQUEST_CONTEXT + "/j_spring_security_logout";
              });
		  } else {
			  window.location.href = com.compro.cgrails.REQUEST_CONTEXT + "/j_spring_security_logout";
		  }		  
		});
	}
};