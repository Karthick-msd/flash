<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<form:form method="post">
<table>

<tr>
<td>UserName</td>
<td><form:input path="username"/></td>
</tr>

<tr>
<td>Password</td>
<td><form:input path="password"/></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value ="Login"/></td>
</tr>



</table>
</form:form>