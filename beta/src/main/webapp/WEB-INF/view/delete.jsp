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
    <title>Drop User</title>
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
            max-width: 400px;
            width: 100%;
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
            align-items: center;
        }
        label {
            margin-bottom: 8px;
            color: #313d4b; /* Label color */
        }
        input[type="text"] {
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus {
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
    <h2>Drop User</h2>
    <form action="/deleteresult" method="get">
        <label for="userId">ID:</label>
        <input type="text" id="userId" name="userId" required>
        <button type="submit">Drop User</button>
    </form>
</div>
</body>
</html>
