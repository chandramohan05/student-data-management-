<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Data Management</title>
    <style>
        body {
            background-color: grey;
            font-family: Arial, sans-serif;
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
            width: 80%;
            margin: 30px auto;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        h1 {
            color: red;
        }

        .add-button {
            display: inline-block;
            padding: 10px 20px;
            margin-bottom: 20px;
            background-color: green;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .add-button:hover {
            background-color: darkgreen;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
        }

        thead {
            background-color: #444;
            color: white;
        }

        a.btn {
            padding: 5px 12px;
            border-radius: 5px;
            text-decoration: none;
            color: white;
        }

        .update {
            background-color: #007bff;
        }

        .update:hover {
            background-color: #0056b3;
        }

        .delete {
            background-color: #dc3545;
        }

        .delete:hover {
            background-color: #a71d2a;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">Student Data Management System</div>
    
</div>

<div class="container">
    <h1>List of Students</h1>

    <a href="${pageContext.request.contextPath}/students/new" class="add-button">Add Student</a>
<a href="${pageContext.request.contextPath}/home" class="add-button">Logout</a>
    <table>
        <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.firstname}</td>
                <td>${student.lastname}</td>
                <td>${student.email}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/students/edit/${student.id}" class="btn update">Update</a>
                    <a href="${pageContext.request.contextPath}/students/${student.id}" class="btn delete">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
