<%@ page import="com.compro.cgrails.CgrailsUtils" %>
<%@ page import="com.compro.cgrails.CgrailsConstants" %>

<g:set var="workflow" value="${CgrailsUtils.getWorkflow()}"/>

<g:if test="${workflow != CgrailsConstants.WORKFLOW_OFFLINE}">
	<facebookAuth:init>
		FB.Event.subscribe('auth.login', function(response) {
		  	TemplateManager.get('authenticate/home', function(template){
					UserModel.get().fetch({
						success: function(model, response){
							var compiledTemplate = Mustache.render(template,UserModel.get().toJSON());
							$("#main_container").html(compiledTemplate);
						}
					});						
			 	});
		});
	</facebookAuth:init>					
</g:if>	
