<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<table border="2" width="70%" cellpadding="2">
<tr>
<th>id</th>
<th>name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th>
</tr>

<c:forEach var="emp" items="${list}">

<tr> 
<td>${emp.id}</td>
<td>${emp.name}</td>
<td>${emp.salary}</td>
<td>${emp.designation}</td>
<td><a href="editemp/${emp.id}">Edit</a>
<td><a href="deleteemp/${emp.id}">Delete</a>
</td>




</tr>
</c:forEach>
</table>

