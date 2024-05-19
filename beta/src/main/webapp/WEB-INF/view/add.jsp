<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/18/2024
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
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
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #313d4b; /* Heading color */
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 8px;
            color: #313d4b; /* Label color */
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #007bff; /* Border color on focus */
        }
        button[type="submit"] {
            padding: 12px 20px;
            background-color: #007bff; /* Button background color */
            color: #fff; /* Button text color */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button[type="submit"]:hover {
            background-color: #0056b3; /* Button background color on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Add User</h2>
    <%--@elvariable id="user" type="com.beta.model.entity.UserEntity"--%>
    <form:form action="/result" method="get" modelAttribute="user">
        <label for="userName">Name:</label>
        <form:input path="userName" id="userName" placeholder="Enter your name"/>
        <label for="userEmail">Email:</label>
        <form:input path="userEmail" id="userEmail" placeholder="Enter your email"/>
        <label for="userPassword">Password:</label>
        <form:password path="userPassword" id="userPassword" placeholder="Enter your password"/>
        <button type="submit">Submit</button>
    </form:form>
</div>
</body>
</html>
