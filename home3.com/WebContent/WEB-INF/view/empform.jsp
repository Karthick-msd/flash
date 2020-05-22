<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<html>
<body>
<head>

<script type="text/javascript">
function EmptyFieldValidation(){
	var idField=document.forms["myform"]["id"].value;
	if(idField==""||idField==0){
		alert("Enter the valid ID");
		return false;
	}
	var nameField=document.forms["myform"]["name"].value;
	if(nameField==""){
	alert("Enter the Name");
	return false;
	}
	var salaryField=document.forms["myform"]["salary"].value;
	if(salaryField==""||salaryField==0){
	alert("Enter the valid Salary");
	return false;
		}
	var designationField=document.forms["myform"]["designation"].value;
	if(designationField==""){
alert("Enter Designation");
return false;
		}
	
	else
	return true;	
}


</script>
<style type="text/css">
body {
 background-color: #cccccc;
}
#id{


}

</style>
</head>
<form:form name="myform" onsubmit="return EmptyFieldValidation()" method="post" action="save">
<table>

<tr>
<td>Id</td>
<td><form:input path="id" name="id" id="id"/></td>
</tr>

<tr>
<td>Name</td>
<td><form:input path="name" name="name" id="name"/></td>
</tr>

<tr>
<td>Salary</td>
<td><form:input path="salary" name="salary" id="salary"/></td>
</tr>

<tr>
<td>Designation</td>
<td><form:input path="designation" name="designation" id="designation"/></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Save"/>
</td>
</tr>

</table>

</form:form>
</body>
</html>

