<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
<style>
body {
  background-image: url('data:image/jpeg;base64,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');
}
.background-image{
    width:100%;
    height:100vh;
    background-image: url('data:image/jpeg;base64,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');
    background-size:cover;
    background-position:center;
    margin-top:fixed;
}

</style>
</head>
<body>

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>


<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Flight ID" title="Type in a name" style="width:250px; border-radius: 15px;">
<table border="1" width="90%" id="myTable">
<tr><th>Flight ID</th><th>Airline Service</th><th>Time</th><th>Price</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getFlightID()}</td><td>${u.getAirlineService()}</td><td>${u.getTime()}</td><td>${u.getPrice()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a>
<script>
    function myFunction() {
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }       
      }
    }
    </script>




</body>
</html>
