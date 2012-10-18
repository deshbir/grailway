<div class="row">
    <div class="span12">
		<div id="home">
			<p>
				<h3><g:message code='home.hello'/> {{username}}</h3>
			</p>	
			<p>
				<a href="<cgrails:switch_singlepage action="course"/>" class="btn btn-large"><g:message code='home.button.mycourses'/> <small>({{username}})</small></a>
			</p>
			<p>	
				<a href="<cgrails:switch_singlepage action="assignment"/>" class="btn btn-large"><g:message code='home.button.myassignments'/> <small>({{username}})</small></a>
			</p>	
		</div>
	</div>
</div>
