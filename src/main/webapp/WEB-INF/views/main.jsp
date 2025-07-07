<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/students/new" class="add-button">Add Student</a>
<a href="${pageContext.request.contextPath}/students/edit/${student.id}" class="btn update">Update</a>
<a href="${pageContext.request.contextPath}/students/${student.id}" class="btn delete">Delete</a>
</body>
</html>