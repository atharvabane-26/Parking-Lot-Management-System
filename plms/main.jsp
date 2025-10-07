<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Parking Lot Dashboard</title>
  <style>
    body { text-align:center; font-family:Arial; background:#eaf3ff; }
    h2 { color:#003366; }
    button {
      margin: 10px;
      padding: 10px 20px;
      background-color: #007bff;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover { background-color: #0056b3; }
  </style>
</head>
<body>
  <h2>Welcome to Parking Lot Management System</h2>
  <button onclick="window.location.href='subpage.jsp?type=entry'">Vehicle Entry</button>
  <button onclick="window.location.href='subpage.jsp?type=exit'">Vehicle Exit</button>
  <button onclick="window.location.href='subpage.jsp?type=report'">Reports</button>
</body>
</html>