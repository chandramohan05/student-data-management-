<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: grey;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            padding: 1rem 2rem;
            color: white;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .container {
            width: 500px;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        h3 {
            color: red;
            text-align: center;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 6px;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 25px;
        }

        .btn {
            flex: 1;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }

        .btn-primary {
            background-color: #007bff;
            margin-right: 10px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-secondary {
            background-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #565e64;
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
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">Student Data Management System</div>
    
</div>

<div class="container">
    <h3>Update Student</h3>

    <form:form method="POST" action="${pageContext.request.contextPath}/students/${student.id}" modelAttribute="student">
        <div class="form-group">
            <label>Student First Name</label>
            <form:input path="firstname" placeholder="Enter first name" />
        </div>
        <div class="form-group">
            <label>Student Last Name</label>
            <form:input path="lastname" placeholder="Enter last name" />
        </div>
        <div class="form-group">
            <label>Student Email</label>
            <form:input path="email" type="email" placeholder="Enter email" />
        </div>
        <div class="button-group">
            <button type="submit" class="btn btn-primary">Update</button>
            <a href="${pageContext.request.contextPath}/students" class="btn btn-secondary">Cancel</a>
        </div>
    </form:form>
</div>

</body>
</html>
