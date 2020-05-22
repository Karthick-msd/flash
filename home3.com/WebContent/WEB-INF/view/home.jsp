<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<html>

<head>


<style type="text/css">
.btn1 {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

.btn2 {
	position:relative;
	left:100px;
	bottom:55px;
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

body {
 background-color: #cccccc;
}

</style>


</head>

<body>

<form action="login">

<input class="btn1" type="submit" value="Login" >

</form>

<form action="rf">

<input class="btn2" type="submit" value="Register">


<a href="https://www.tradingview.com/markets/stocks-india/">Today's Stock Market</a>

</form>


</body>
</html>