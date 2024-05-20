<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/19/2024
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drop Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
            transition: color 0.3s;
        }
        a:hover {
            text-decoration: underline;
            color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>User with ID: ${param.userId} was deleted</h2>
    <a href="/show">Back to List</a>
</div>
</body>
</html>
