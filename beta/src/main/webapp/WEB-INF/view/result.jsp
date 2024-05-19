<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/18/2024
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result of Adding User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #313d4b;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 600px;
            width: 100%;
            padding: 40px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            margin-top: 0;
            color: #007bff; /* Heading color */
        }
        .result-info {
            margin-bottom: 20px;
        }
        .result-info p {
            margin: 10px 0;
            color: #333; /* Text color */
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff; /* Button background color */
            color: #fff; /* Button text color */
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        .back-link:hover {
            background-color: #0056b3; /* Button background color on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Result of Adding User</h1>
    <div class="result-info">
        <jsp:useBean id="user" class="com.beta.model.entity.UserEntity" scope="request"/>
        <p><strong>UserName:</strong> ${user.userName}</p>
        <p><strong>Email:</strong> ${user.userEmail}</p>
        <p><strong>Password:</strong> ${user.userPassword}</p>
    </div>
    <a href="/show" class="back-link">Back to List</a>
</div>
</body>
</html>
