<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About - Student Data Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: grey;
            margin: 0;
            padding: 0;
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

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            
        }

        h1 {
            text-align: center;
            color: #333;
        }

        p {
            font-size: 16px;
            line-height: 1.6;
            color: #444;
        }

        ul {
            color: #444;
            font-size: 16px;
        }

        .footer {
            text-align: center;
            padding: 20px;
            background-color: #f4f4f4;
            margin-top: 50px;
            font-size: 14px;
            color: #888;
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
    <h1>About Student Data Management System</h1>
    <p>
        The Student Data Management System is a web-based application designed to simplify the process of managing student records.
        This system allows you to:
    </p>
    <ul>
        <li>Add new students</li>
        <li>View a list of all students</li>
        <li>Update student information</li>
        <li>Delete student records</li>
    </ul>
    <p>
        The application is built using Java Spring Boot, JSP for frontend rendering, and Hibernate for ORM. It ensures data consistency, easy user interaction, and efficient management of student information for schools, colleges, and institutions.
    </p>
</div>



</body>
</html>
