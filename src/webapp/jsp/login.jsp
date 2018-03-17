<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>

<body>
<h1>Welcome in my login page !!!</h1>

<div>This is login page </div>


<form method="post" action="/login">
    <label>Username</label>
    <input type="username" name="username">
    <br>
    <label>Password</label>
    <input type="password" name="password">
    <br>
    <button type="submit">LOG IN</button>


</form>


</body>

</html>