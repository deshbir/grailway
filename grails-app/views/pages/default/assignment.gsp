<html>
    <head>
        <meta name="layout" content="assignment_layout" />
    </head>
    <body>
    	<r:script type="text/javascript">
			AssignmentsView.routerInitialize();
			Backbone.history.start();
			if (window.location.hash.length <= 1){
				Backbone.history.navigate("#/assignments/list", {trigger:true,replace:true});
			} 	
		</r:script>	
    </body>
</html>

