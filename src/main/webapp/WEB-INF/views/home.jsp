<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home | My Site</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: white;
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

        .content {
            padding: 50px;
            text-align: center;
        }

        .content h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: black;
        }

        .content p {
            font-size: 18px;
            color: black;
            max-width: 800px;
            margin: 0 auto 30px auto;
        }

        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 40px;
        }

        .feature-card {
            background-color: #fff;
            width: 250px;
            padding: 20px;
            margin: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            text-align: center;
        }

        .feature-card h3 {
            color: #2980b9;
            margin-bottom: 10px;
        }

        .feature-card p {
            font-size: 15px;
            color: #777;
        }

        .cta {
            margin-top: 50px;
        }

        .cta a {
            display: inline-block;
            padding: 12px 24px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .cta a:hover {
            background-color: #2980b9;
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

<div class="content">
    <h1>Welcome to MySite!</h1>
    <p>
        MySite is a modern and user-friendly web application where you can manage student records efficiently.
        Whether you're a student or an administrator, everything you need is just a click away.
    </p>

    <div class="features">
        <div class="feature-card">
            <h3>Easy Signup</h3>
            <p>Register quickly using our simple signup form.</p>
        </div>
        <div class="feature-card">
            <h3>Secure Login</h3>
            <p>Keep your information safe with secure authentication.</p>
        </div>
        <div class="feature-card">
            <h3>Student Management</h3>
            <p>View, edit, and delete student records with ease.</p>
        </div>
    </div>

    <div class="cta">
        <a href="${pageContext.request.contextPath}/signup">Get Started Now</a>
    </div>
</div>

</body>
</html>
