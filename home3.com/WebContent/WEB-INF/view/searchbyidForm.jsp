<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<form:form method="POST" >



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
</form:form>



<!-- function data() { -->
<!--     var connection = new ActiveXObject("ADODB.Connection"); -->

<!--     var connectionstring = "Data Source=elabsqldb2.db.11460868.hostedresource.com;Initial Catalog=elabsqldb2;User ID=elabsqldb2;password=elab17TRACK#14"; -->
<!--     connection.Open(connectionstring); -->
<!--     var rs = new ActiveXObject("ADODB.Recordset"); -->

<!--     rs.Open("SELECT * FROM demo", connection); -->
<!--     rs.MoveFirst -->
<!--     while (!rs.eof) { -->
<!--         document.write(rs.fields(1)); -->
<!--         rs.movenext; -->
<!--     } -->

<!--     rs.close; -->
<!--     connection.close; -->

<!-- } -->





































