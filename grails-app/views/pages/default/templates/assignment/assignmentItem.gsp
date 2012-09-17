<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!--  td class="id">{{ id }}</td-->
<td class="assignmentName" >
	<div class="aname">{{name}}</div>
	<div class="edit"><input class="assignment-input" type="text" value="{{ name }}" /></div>
</td>
<td class="destroy"><i class="icon-remove"></i></td>
