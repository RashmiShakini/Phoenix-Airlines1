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
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
    <tr><td>First Name:</td><td><input type="text" name="FirstName" value="<%= u.getFirstName()%>"/></td></tr>
<tr><td>Last Name:</td><td><input type="text" name="LastName" value="<%= u.getLastName()%>"/></td></tr>
<tr><td>ID Card Number:</td><td><input type="text" name="IDCardNumber" value="<%= u.getIDCardNumber()%>"/></td></tr>
<tr><td>User Name:</td><td><input type="text" name="UserName" value="<%= u.getUserName()%>"/></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
<tr><td>Confirm Password:</td><td><input type="Password" name="ConfirmPassword" value="<%= u.getConfirmPassword()%>"/></td></tr>
<tr><td>Phone Number:</td><td><input type="text" name="PhoneNumber" value="<%= u.getPhoneNumber()%>"/></td></tr>
<tr><td>Address:</td><td><input type="text" name="Address" value="<%= u.getAddress()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>
</table>
</form>

</body>
</html>
