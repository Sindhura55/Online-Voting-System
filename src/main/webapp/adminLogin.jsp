<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet"  type="text/css"  href="style.css?v=1">
</head>

<%@ include file="navbar.jsp" %>

<body>

<div class="form-container1">
<form action="AdminLogin" method="post">
<h3>Please fill the required details:</h3>
<label for="aName">Name</label>
<br>
<input name="aName"  id="aName"  type="text" >

<label for="password">Password</label>
<br>
<input name="password"  id="password"  type="password" >

<button type="submit" >Login</button>

</form>
</div>

</body>
</html>