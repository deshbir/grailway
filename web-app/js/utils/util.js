Util = new function() {
	this.changeLocale = function(locale){
		$.ajax({
	    	url: com.compro.cgrails.REQUEST_CONTEXT + "/" + com.compro.cgrails.SKIN + "/main/changelocale?lang="+locale,
	        success: function(data) {
				location.reload(true);
	        }
		});
  	},
  	this.configureAJAX = function() {
  		if($.browser.msie){
			$.ajaxSetup({ cache: false });
		}
		$(document).ajaxStart(function(){
			$("#loadingIcon").show()
		}).ajaxStop(function(){
			$("#loadingIcon").hide()
		});		
  	}
};




