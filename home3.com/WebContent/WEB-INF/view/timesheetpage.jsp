<%@ taglib   uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script type="text/javascript">

function validation(){

	var pay=document.forms["myform"]["paycheckid"].value;
	if(pay==""){
		alert("Enter EmpID");
		
		return false;
		}
}

</script>
</head>
<body>
<form:form action="timesheetAction" method="POST" name="myform">
<h3>Time Sheet</h3>
<table  border="2" width="20%" cellpadding="2">


<tr>
<th>Enter Empid</th>
<td><form:input path="empid" name="empid" id="empid" placeholder="Employee ID"/></td>
</tr>



<tr>
<th>Grade</th>
<td><form:select path="grade">
<form:option  value="L1">L1</form:option>
<form:option  value="L2">L2</form:option>
<form:option  value="L3">L3</form:option>
<form:option  value="L4">L4</form:option>
<form:option  value="L5">L5</form:option>
</form:select></td>
</tr>



<tr>
<th>Company</th>
<td><form:select path="company">
<form:option  value="google">Google</form:option>
<form:option  value="msoft">Microsoft</form:option>
<form:option  value="ibm">IBM</form:option>
</form:select></td>
</tr>


<tr>
<th>Domain</th>
<td><form:select path="Domain" id="Domain" name="Domain">
<form:option path="IT SoftWare" value="IT SoftWare">IT SoftWare</form:option>
<form:option path="IT HardWare" value="IT HardWare">IT HardWare</form:option>
<form:option path="BPO" value="BPO">BPO</form:option>
</form:select></td>
</tr>


<tr>
<th>Monday</th>
<td><form:select path="Monday" id="Monday" name="Monday">
<form:option path="Present" value="Present">Present</form:option>
<form:option path="Not in office" value="Not in office">Not in office</form:option>
<form:option path="Approved Leave" value="Approved Leave">Approved Leave</form:option>
<form:option path="Emergency Leave" value="Emergency Leave">Emergency Leave</form:option>
</form:select></td>
</tr>


<tr>
<th>Tuesday</th>
<td><form:select path="Tuesday" id="Tuesday">
<form:option path="Present"  value="Present">Present</form:option>
<form:option path="Not in office" value="Not in office" >Not in office</form:option>
<form:option path="Approved Leave" value="Approved Leave">Approved Leave</form:option>
<form:option path="Emergency Leave" value="Emergency Leave">Emergency Leave</form:option>
</form:select></td>
</tr>


<tr>
<th>Wednesday</th>
<td><form:select path="Wednesday" id="Wednesday">
<form:option path="Present" value="Present">Present</form:option>
<form:option path="Not in office" value="Not in office">Not in office</form:option>
<form:option path="Approved Leave" value="Approved Leave">Approved Leave</form:option>
<form:option path="Emergency Leave" value="Emergency Leave">Emergency Leave</form:option>
</form:select></td>
</tr>


<tr>
<th>Thursday</th>
<td><form:select path="Thursday" id="Thursday">
<form:option path="Present" value="Present">Present</form:option>
<form:option path="Not in office"  value="Not in office" >Not in office</form:option>
<form:option path="Approved Leave" value="Approved Leave">Approved Leave</form:option>
<form:option path="Emergency Leave" value="Emergency Leave">Emergency Leave</form:option>
</form:select></td>
</tr>


<tr>
<th>Friday</th>
<td><form:select path="Friday" id="Friday">
<form:option path="Present" value="Present">Present</form:option>
<form:option path="Not in office" value="Not in office">Not in office</form:option>
<form:option path="Approved Leave" value="Approved Leave">Approved Leave</form:option>
<form:option path="Emergency Leave" value="Emergency Leave">Emergency Leave</form:option>
</form:select></td>
</tr>


</table>

<input type="submit" value="Submit"/>

</form:form>



<center>
<form:form action="paycheck" method="POST" name="myform">

<input type="text" id="paycheckid" name="paycheckid" placeholder="Enter EmpID"/><br><br>


<input type="submit" value="Check Your pay for this week" onclick="validation()"><br><br><br>

${list.monday}

</center>
</form:form>



</body>
</html>