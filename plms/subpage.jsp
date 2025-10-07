<%@ page language="java" %>
<%
  String type = request.getParameter("type");
%>
<!DOCTYPE html>
<html>
<head>
  <title><%= type.toUpperCase() %> Page</title>
  <style>
    body { font-family: Arial; text-align:center; background:#f8f8f8; }
    input { margin:10px; padding:8px; }
    button { padding:10px 20px; background:#007bff; color:white; border:none; border-radius:5px; }
    button:hover { background:#0056b3; }
  </style>
</head>
<body>
  <h2><%= type.substring(0,1).toUpperCase() + type.substring(1) %> Page</h2>

  <% if("entry".equals(type)) { %>
    <form action="VehicleServlet" method="post">
      <input type="hidden" name="action" value="entry">
      Vehicle No: <input type="text" name="vehicleNo"><br>
      Owner Name: <input type="text" name="owner"><br>
      <button type="submit">Register Entry</button>
    </form>
  <% } else if("exit".equals(type)) { %>
    <form action="VehicleServlet" method="post">
      <input type="hidden" name="action" value="exit">
      Vehicle No: <input type="text" name="vehicleNo"><br>
      <button type="submit">Register Exit</button>
    </form>
  <% } else { %>
    <h3>Report Section (Coming Soon)</h3>
  <% } %>
  <br><a href="main.jsp">Back to Dashboard</a>
</body>
</html>h