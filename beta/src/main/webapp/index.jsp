<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User-DataBase</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #313d4b; /* Background color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            color: #333;
        }
        h2 {
            color: #c1ff72; /* Heading color */
            margin-bottom: 30px;
            font-weight: 600;
        }
        p {
            margin-bottom: 20px;
            font-size: 18px;
            line-height: 1.6;
        }
        .container a {
            display: inline-block;
            margin: 10px auto;
            padding: 12px 30px;
            background-color: #c1ff72; /* Button background color */
            color: #313d4b; /* Button text color */
            text-decoration: none;
            border-radius: 25px;
            transition: background-color 0.3s ease;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .container a:hover {
            background-color: #9ad545; /* Button background color on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <h2>XappDB - User Monitoring</h2>
    <p>This page is for monitoring users in the database. You can perform various actions like viewing all users, deleting users, and adding new users.</p>
    <a href="show">Show All Users</a>
    <a href="delete">Delete User</a>
    <a href="add">Add User</a>
</div>
</body>
</html>
