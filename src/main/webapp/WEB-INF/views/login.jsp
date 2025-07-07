<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login | MySite</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: grey;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            max-width: 400px;
            margin: 80px auto;
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
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

        h2 {
            text-align: center;
            margin-bottom: 25px;
            
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"] {
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

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }

        .signup-link {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        .signup-link a {
            color: #3498db;
            text-decoration: none;
        }

        .signup-link a:hover {
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
    <h2>Login</h2>

    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>

    <form:form action="${pageContext.request.contextPath}/login" method="post" modelAttribute="user">
        <label for="username">Username:</label>
        <form:input path="username" />

        <label for="password">Password:</label>
        <form:password path="password" />

        <input type="submit" value="Login" />
    </form:form>

    <div class="signup-link">
        <p>Don't have an account? <a href="${pageContext.request.contextPath}/signup">Sign Up</a></p>
    </div>
</div>

</body>
</html>
