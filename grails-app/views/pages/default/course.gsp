<html>
    <head>
        <meta name="layout" content="singlepage_layout" />
    </head>
    <body>
    	<r:script type="text/javascript">
			CoursesView.routerInitialize();
			Backbone.history.start();
			if (window.location.hash.length <= 1){
				Backbone.history.navigate("#/courses/list", {trigger:true,replace:true});
			} 	
		</r:script>	
    </body>
</html>

