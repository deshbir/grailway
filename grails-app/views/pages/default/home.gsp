<html>
    <head>
        <meta name="layout" content="home_layout" />
    </head>
    <body>
    	<r:script type="text/javascript">
			HomeView.routerInitialize();
			Backbone.history.start();
			if (window.location.hash.length <= 1){
				Backbone.history.navigate("#/home", {trigger:true,replace:true});
			} 	
		</r:script>	
    </body>
</html>

