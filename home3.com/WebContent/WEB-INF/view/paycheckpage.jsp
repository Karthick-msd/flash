<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form>

<%-- <c:set var="days" value="${list.monday}${list.tuesday}${list.wednesday}${list.thursday}${list.friday}"/> --%>
<%-- <c:out value="${days}"></c:out> --%>


<center>


<!-- not in office is x1 and emergency leave y1 -->

<!-- present is a1 Approved Leave is b1 -->

<%-- <c:choose> --%>

<%-- <c:when test="${list.monday eq 'Present'}"> --%>

<%-- 	<c:set var="a1" scope="session" value="${1000}"/> --%>
	
<%-- 	<c:out value= " Monday pay is ${a1}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.monday eq 'Not in office'}"> --%>

<%-- 	<c:set var="x1" scope="session" value="${1000-100}"/> --%>
	
<%-- 	<c:out value= " Monday pay is ${x1}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>



<%-- <c:choose> --%>

<%-- <c:when test="${list.monday eq 'Approved Leave'}"> --%>

<%-- 	<c:set var="b1" scope="session" value="${1000-50}"/> --%>
	
<%-- 	<c:out value= " Monday pay is ${b1}"/><br><br> --%>
	
<%-- </c:when> --%>
<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.monday eq 'Emergency Leave'}"> --%>

<%-- 	<c:set var="y1" scope="session" value="${1000-200}"/> --%>
	
<%-- 	<c:out value=" Monday pay is ${y1}"/><br><br> --%>
	
<%-- 	</c:when> --%>
	

<%-- </c:choose> --%>


<!-- <!-- END OF MONDAY --> -->


<%-- <c:choose> --%>

<%-- <c:when test="${list.tuesday eq 'Present'}"> --%>

<%-- 	<c:set var="a2" scope="session" value="${1000}"/> --%>
	
<%-- 	<c:out value= " Tuesday pay is ${a2}"/><br><br> --%>
	
<%-- </c:when> --%>
<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.tuesday eq 'Not in office'}"> --%>

<%-- 	<c:set var="x2" scope="session" value="${1000-100}"/> --%>
	
<%-- 	<c:out value=" Tuesday pay is ${x2}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.tuesday eq 'Approved Leave'}"> --%>

<%-- 	<c:set var="b2" scope="session" value="${1000-50}"/> --%>
	
<%-- 	<c:out value= " Tuesday pay is ${b2}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.tuesday eq 'Emergency Leave'}"> --%>

<%-- 	<c:set var="y2" scope="session" value="${1000-200}"/> --%>
	
<%-- 	<c:out value=" Tuesday pay is ${y2}"/><br><br> --%>
	
<%-- 	</c:when> --%>
	
<%-- </c:choose> --%>

<!-- <!-- END OF TUESDAY --> -->


<%-- <c:choose> --%>

<%-- <c:when test="${list.wednesday eq 'Present'}"> --%>

<%-- 	<c:set var="a3" scope="session" value="${1000}"/> --%>
	
<%-- 	<c:out value= " Wednesday pay is ${a3}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.wednesday eq 'Not in office'}"> --%>

<%-- 	<c:set var="x3" scope="session" value="${1000-100}"/> --%>
	
<%-- 	<c:out value=" Wednessday pay is${x3}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.wednesday eq 'Approved Leave'}"> --%>

<%-- 	<c:set var="b3" scope="session" value="${1000-50}"/> --%>
	
<%-- 	<c:out value= " Wednesday pay is ${b3}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.wednesday eq 'Emergency Leave'}"> --%>

<%-- 	<c:set var="y3" scope="session" value="${1000-200}"/> --%>
	
<%-- 	<c:out value=" Wednesday pay is ${y3}"/><br><br> --%>
	
<%-- 	</c:when> --%>
	
<%-- </c:choose> --%>


<!-- <!-- END OF WEDNESDAY --> -->

<%-- <c:choose> --%>

<%-- <c:when test="${list.thursday eq 'Present'}"> --%>

<%-- 	<c:set var="a4" scope="session" value="${1000}"/> --%>
	
<%-- 	<c:out value= " Thursday pay is ${a4}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.thursday eq 'Not in office'}"> --%>

<%-- 	<c:set var="x4" scope="session" value="${1000-100}"/> --%>
	
<%-- 	<c:out value=" Thursday pay is ${x4}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>


<%-- <c:when test="${list.thursday eq 'Approved Leave'}"> --%>

<%-- 	<c:set var="b4" scope="session" value="${1000-50}"/> --%>
	
<%-- 	<c:out value= " Thursday pay is ${b4}"/><br><br> --%>
	
<%-- </c:when> --%>
<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.thursday eq 'Emergency Leave'}"> --%>

<%-- 	<c:set var="y4" scope="session" value="${1000-200}"/> --%>
	
<%-- 	<c:out value=" Thursday pay is ${y4}"/><br><br> --%>
	
<%-- 	</c:when>	 --%>

<%-- </c:choose> --%>

<!-- <!-- END OF THURSDAY --> -->

<%-- <c:choose> --%>

<%-- <c:when test="${list.friday eq 'Present'}"> --%>

<%-- 	<c:set var="a5" scope="session" value="${1000}"/> --%>
	
<%-- 	<c:out value= " Friday pay is ${a5}"/><br><br> --%>
	
<%-- </c:when> --%>
<%-- </c:choose> --%>

<%-- <c:choose> --%>

<%-- <c:when test="${list.friday eq 'Not in office'}"> --%>

<%-- 	<c:set var="x5" scope="session" value="${1000-100}"/> --%>
	
<%-- 	<c:out value=" Friday pay is ${x5}"/><br><br> --%>
	
<%-- </c:when> --%>

<%-- </c:choose> --%>

<%-- <c:choose> --%>


<%-- <c:when test="${list.friday eq 'Approved Leave'}"> --%>

<%-- 	<c:set var="b5" scope="session" value="${1000-50}"/> --%>
	
<%-- 	<c:out value= " Friday pay is ${b5}"/><br><br> --%>
	
<%-- </c:when> --%>
<%-- </c:choose> --%>
<%-- <c:choose> --%>

<%-- <c:when test="${list.friday eq 'Emergency Leave'}"> --%>

<%-- 	<c:set var="y5" scope="session" value="${1000-200}"/> --%>
	
<%-- 	<c:out value=" Friday pay is ${y5}"/><br><br> --%>
	
<%-- 	</c:when> --%>


<%-- </c:choose> --%>

<!-- <!-- END OF FRIDAY --> -->

<%-- <c:set var="total1" scope="session" value="${x1+x2+x3+x4+x5}"></c:set> --%>

<%-- <c:set var="total2" scope="session" value="${y1+y2+y3+y4+y5}"></c:set> --%>

<%-- <c:set var="total3" scope="session" value="${a1+a2+a3+a4+a5}"></c:set> --%>

<%-- <c:set var="total4" scope="session" value="${b1+b2+b3+b4+b5}"></c:set> --%>


<%-- <%-- <c:set var="total1" scope="session" value="${a1+x1+b1+y1}"></c:set> --%> --%>

<%-- <%-- <c:set var="total2" scope="session" value="${a2+x2+b2+y2}"></c:set> --%> --%>

<%-- <%-- <c:set var="total3" scope="session" value="${a3+x3+b3+y3}"></c:set> --%> --%>

<%-- <%-- <c:set var="total4" scope="session" value="${a4+x4+b4+y4}"></c:set> --%> --%>


<%-- <c:out value=" ${total1+total2+total3+total4}"></c:out> --%>


<c:choose>

<c:when test="${list.monday eq 'Not in office'}">

	<c:set var="x1" scope="session" value="${1000-100}"/>
	
	<c:out value= " Monday pay is ${x1}"/><br><br>
	
</c:when>

<c:when test="${list.monday eq 'Emergency Leave'}">

	<c:set var="y1" scope="session" value="${1000-200}"/>
	
	<c:out value=" Monday pay is ${y1}"/><br><br>
	
	</c:when>
	

</c:choose>

<c:choose>

<c:when test="${list.tuesday eq 'Not in office'}">

	<c:set var="x2" scope="session" value="${1000-100}"/>
	
	<c:out value=" Tuesday pay is ${x2}"/><br><br>
	
</c:when>

<c:when test="${list.tuesday eq 'Emergency Leave'}">

	<c:set var="y2" scope="session" value="${1000-200}"/>
	
	<c:out value=" Tuesday pay is ${y2}"/><br><br>
	
	</c:when>
	

</c:choose>


<c:choose>

<c:when test="${list.wednesday eq 'Not in office'}">

	<c:set var="x3" scope="session" value="${1000-100}"/>
	
	<c:out value=" Wednessday pay is${x3}"/><br><br>
	
</c:when>

<c:when test="${list.wednesday eq 'Emergency Leave'}">

	<c:set var="y3" scope="session" value="${1000-200}"/>
	
	<c:out value=" Wednesday pay is ${y3}"/><br><br>
	
	</c:when>
	

</c:choose>



<c:choose>

<c:when test="${list.thursday eq 'Not in office'}">

	<c:set var="x4" scope="session" value="${1000-100}"/>
	
	<c:out value=" Thursday pay is ${x4}"/><br><br>
	
</c:when>

<c:when test="${list.thursday eq 'Emergency Leave'}">

	<c:set var="y4" scope="session" value="${1000-200}"/>
	
	<c:out value=" Thursday pay is ${y4}"/><br><br>
	
	</c:when>	

</c:choose>

<c:choose>

<c:when test="${list.friday eq 'Not in office'}">

	<c:set var="x5" scope="session" value="${1000-100}"/>
	
	<c:out value=" Friday pay is ${x5}"/><br><br>
	
</c:when>

<c:when test="${list.friday eq 'Emergency Leave'}">

	<c:set var="y5" scope="session" value="${1000-200}"/>
	
	<c:out value=" Friday pay is ${y5}"/><br><br>
	
	</c:when>
	
</c:choose>

<c:set var="total1" scope="session" value="${x1+x2+x3+x4+x5}"></c:set>

<c:set var="total2" scope="session" value="${y1+y2+y3+y4+y5}"></c:set>


<c:out value=" The Pay is${total1}"></c:out>

<c:out value=" The Pay is${total2}"></c:out>

</form:form>
</center>
</body>
</html>