<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<form:form method="POST" action="/home2.com/editsave">
<table>

<tr>
<td></td>
<td><form:hidden path="id"/></td>
</tr>

<tr>
<td>Name </td>
<td><form:input path="name"/></td>
</tr>


<tr>
<td>Salary</td>
<td><form:input path="salary"/></td>
</tr>


<tr>
<td>Designation</td>
<td><form:input path="designation"/></td>
</tr>


<tr>
<td></td>
<td><input type="submit" value="Edit save"/></td>
</tr>

</table>

</form:form>