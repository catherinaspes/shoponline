<%@page language ="Java" contentType="text/html" pageEncoding="utf-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<body>

<h1>  Dziękujemy za zakupy!</h1>

<p> <c:forEach items="${personalDatas}" var="personalDatas">

    ${personalData.firstname} Twoje zamówienie zostało przekazane do realizacji

</c:forEach></p>

<p>Zapraszamy na ponowne zakupy w naszym sklepie</p>

</body>
</html>