<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<%--this jstl tag is for date input purpose 

<form:input path="dob"/>

--%>



<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<style type="text/css">
.fname{
background-color: #4CAF50;
}
.lname{
background-color: #4CAF50;
}
.mail{
background-color: #4CAF50;
}
.date{
background-color: #4CAF50;
}
.register{
background-color: #4CAF50;
}
.gohome{
background-color: #4CAF50;
}
.username{
background-color: #4CAF50;
}
.password{
background-color: #4CAF50;
}
body {
 background-color: #cccccc;
}
</style>
<script type="text/javascript">


// }
// function validateUsername(username){

// 	var username=document.forms["myform"]["username"].value;
	
// 	if(username<3)
// 		alert("userName should be 3 character Atleast");
// 		return false;
		
// 		if(username>12)
// 			alert("UserName cant be more than 12 character");
// 			return false;
	
// 	else
// 		return true;
	
// }

function fun(){
	var a=document.forms["myform"]["firstname"].value;

	if(a==""){
		alert("Enter firstname");
		return false;
	}

var b=document.forms["myform"]["lastname"].value;
if(b==""){
	alert("enter lastname");
	return false;
}

var c=document.forms["myform"]["mailid"].value;
if(c==""){
	alert("Enter Mail id");
	return false;
}
var d=document.forms["myform"]["date"].value;
if(d==""){
	alert("Enter Date of Birth");
	return false;
}

var e=document.forms["myform"]["username"].value;
if(e==""){
	alert("Enter username");
	return false;
}
var f=document.forms["myform"]["password"].value;

if(f==""){
	alert("Enter Password");
	return false;
}
else{
	return true;
}
}

function fun2(){
	var a1=document.forms["myform"]["firstname"].value;
	if(a1.length<3){
		alert("Firstname cant be less than 3");
		return false;
	}
		else if(a1.length>10){
		alert("Firstname cant be More than 10")
		return false;
		}

	var a2=document.forms["myform"]["lastname"].value;
	if(a2.length<3){
	alert("Lastname cant be less than 3");
	return false;
		}
	else if(s2.length>10){
	alert("Lastname cant be more than 10");
	return false;
		}
	
		else{
			return true;
}
	}

function validateMail(){
	var mailid=document.forms["myform"]["mailid"].value;
var regx=/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if(regx.test(mailid))
		return true;
	else
		alert("Invalid mailid");
		return false;
}

</script>

</head>
<body>
<center>
<h3>Fill the Registration Form </h3>
<h6>___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________</h6>

<div class="regfields">
<form:form name="myform" id="myform" method="post" action="LP" onsubmit="fun() && fun2() && validateMail()" >

<table>
<tr>
<td>FirstName :</td>
<td><form:input path="firstname" class="fname" id="firstname" name="firstname" min="3"/></td>
</tr>


<tr>
<td>LastName :</td>
<td><form:input path="lastname" class="lname"/></td>
</tr>

<tr>
<td>Mail Id :</td>
<td><form:input path="mailid" class="mail" id="mailid"/></td>
</tr>


<tr>
<td>DOB:</td>
<td><form:input type="date" path="dob" id="date" class="date" placeholder="Date of Birth"/></td>
</tr>



<tr>
<td>UserName</td>
<td><form:input path="username" class="username" placeholder="Create Username" name="username" id="username" /></td>
</tr>

<tr>
<td>Password</td>
<td><form:input path="password" class="password" placeholder="Create Password" name="password" id="password" /></td>
</tr>



<tr>
<td></td>
<td><input type="submit" value="Register" id="reg"  class="register"></td>
</tr>

</table>

</form:form>
</div>


<form:form action="hp">

<input type="submit" value="Go to Home" class="gohome">

</form:form>
</center>

</body>
</html>