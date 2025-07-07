<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Student</title>
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
            background-color: white;
            width: 500px;
            margin: 40px auto;
            padding: 30px 40px;
            border-radius: 10px;
            text-align: center;
        }

        h1 {
            color: red;
            margin-bottom: 25px;
        }

        .form-group {
            text-align: left;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">Student Data Management System</div>
    
</div>

<div class="container">
    <h1>Create New Student</h1>
    <form:form action="${pageContext.request.contextPath}/students" modelAttribute="student" method="POST">
        <div class="form-group">
            <label for="firstname">Student First Name</label>
            <form:input path="firstname" id="firstname" placeholder="Enter the student's first name" />
        </div>
        <div class="form-group">
            <label for="lastname">Student Last Name</label>
            <form:input path="lastname" id="lastname" placeholder="Enter the student's last name" />
        </div>
        <div class="form-group">
            <label for="email">Student Email</label>
            <form:input path="email" id="email" placeholder="Enter the student's email" />
        </div>
        <button type="submit" class="btn">Submit</button>
    </form:form>
</div>

</body>
</html>
