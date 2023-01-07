<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact us</title>
<link rel="stylesheet"  type="text/css"  href="style.css?v=1">
</head>
<%@ include file="navbar.jsp" %>
<body>
<div class="form-container1" >
<div class="contact">
  <form action="Contacts"  method="post">
  <h3>Please fill the required details</h3>
  <br>
  <label for="uName">Name</label>
  <br>
  <input name="uName"  id="uName"  type="text"  >
  <br>
  <label for="pNumber">Phone Number</label>
  <br>
  <input name="pNumber"  id="pNumber"  type="text"  >
  <br>
  <label for="email">Email</label>
  <br>
  <input name="email"  id="email"  type="email"  >
  <br>
  <label for="comment">Comment</label>
  <br>
  <textarea name="comment"  id="comment"  rows="4"  cols="8" ></textarea>
  <br>
  <button type="submit">Submit</button>
  </form>
  </div>
  </div>

</body>
</html>