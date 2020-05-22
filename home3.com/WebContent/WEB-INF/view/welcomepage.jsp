<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

body {
 background-color: #cccccc;
}

.getEmployeeForm{
  background-color: #008CBA; /* Blue*/
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

.Timesheet{
position:relative;
left:250px;
bottom:65px;
background-color: #008CBA; /* Blue*/
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;

}
</style>
<script type="text/javascript">

function SearchValidation(){
var searchField=document.forms["myform"]["id"].value;
if(searchField==""){
	alert("enter ID to search");
	return false;
}
else{
return true;
}}
</script>
 <style type="text/css">
 #id{
 background-color: #4CAF50;
 }
 </style>
</head>
<body>
<form action="empform">

<center><h5>Welcome ${loggedinuser}</h5></center><br>
<br>

<input type="submit" value="Get Employee Form" class="getEmployeeForm"/>

</form>

<form action="timesheetpage"> 

<input type="submit" value="Timesheet" class="Timesheet"/>

</form>


<center>
<form:form name="myform"  onsubmit="return SearchValidation()" action="searchbyid" method="post">

<input type="text" name="id" id="id"  placeholder="Enter employee ID" /><br><br>

 <input type="submit" value="Search" id="searchButton" class="searchButton" name="searchButton" /> 


<h1>_______________________________________________________________________________________________________________________</h1>

<table border="2" width="50%" cellpadding="2">
<tr>
<th>Id</th>
<td>${emp.id}</td>
</tr>


<tr>
<th>Name</th>
<td>${emp.name}</td>
</tr>


<tr>
<th>Salary</th>
<td>${emp.salary}</td>
</tr>


<tr>
<th>Designation</th>
<td>${emp.designation}</td>
</tr>

</table>

</table>
</form:form>
</center>


</body>
</html>