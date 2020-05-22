<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

input[type=text] {
	width:15%;
  background-color: #3CBC8D;
  color:white;
  
}
input[type=password]{
  background-color: #3CBC8D;
	width:15%;

  color:white;


}
.login {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

.register{
	position:relative;
	
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
.gohome{
  background-color: #3CBC8D;
}
body {
 background-color: #cccccc;
}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>


<center>
<form:form id="loginForm" method="post" action="login" modelAttribute="login">

<form:label path="username">Enter UserName</form:label>
<form:input id="username" path="username" name="username" /><br><br>
<form:label path="password">Enter Password</form:label>
<form:input type="password"  id="password" path="password" name="password"/><br><br>

<input class="login" type="submit" value="Login"/><br><br>



</form:form>

<form:form action="rf">

<input class="register" type="submit" value="Click to Register..!"/><br>


</form:form>


<form:form action="hp">

<input class="gohome" type="submit" value="Go to Home">

</form:form>
</center>
</body>
</html>