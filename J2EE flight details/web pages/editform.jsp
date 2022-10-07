<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">
<table>
<tr><td>Flight ID:</td><td><input type="text" name="FlightID" value="<%= u.getFlightID()%>"/></td></tr>
<tr><td>Airline Service:</td><td><input type="text" name="AirlineService" value="<%= u.getAirlineService()%>"/></td></tr>
<tr><td>Time:</td><td><input type="text" name="Time" value="<%= u.getTime()%>"/></td></tr>
<tr><td>Price:</td><td><input type="text" name="Price" value="<%= u.getPrice()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>
</table>
</form>

</body>
</html>
