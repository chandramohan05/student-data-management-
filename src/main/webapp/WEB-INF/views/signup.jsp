<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Signup | Student Data Management System</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color:grey;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            max-width: 450px;
            margin: 80px auto;
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            
        }
        .navbar {
            background-color: #2c3e50;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar .logo {
            color: #ecf0f1;
            font-size: 24px;
            font-weight: bold;
        }

        .navbar a {
            color: #ecf0f1;
            text-decoration: none;
            margin-left: 20px;
            font-size: 16px;
            transition: 0.3s;
        }

        .navbar a:hover {
            color: #f39c12;
        }

        h1 {
            text-align: center;
            margin-top: 30px;
            color: #2c3e50;
        }

        h2 {
            text-align: center;
            
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px;
            margin-top: 20px;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .login-link {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        .login-link a {
            color: #3498db;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">Student Data Management System</div>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/home">Home</a>
        <a href="${pageContext.request.contextPath}/about">About</a>
        <a href="${pageContext.request.contextPath}/login">Login</a>
        <a href="${pageContext.request.contextPath}/signup">Signup</a>
    </div>
</div>

<div class="container">
    <h2>Signup</h2>

    <form:form action="${pageContext.request.contextPath}/signup" method="post" modelAttribute="user">
        <label for="username">Username:</label>
        <form:input path="username" />

        <label for="email">Email:</label>
        <form:input path="email" />

        <label for="password">Password:</label>
        <form:password path="password" />

        <input type="submit" value="Sign Up" />
    </form:form>

    <div class="login-link">
        <p>Already have an account? <a href="${pageContext.request.contextPath}/login">Login</a></p>
    </div>
</div>

</body>
</html>
