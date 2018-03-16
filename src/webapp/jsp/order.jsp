<%@page language ="Java" contentType="text/html" pageEncoding="utf-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title> Twoje zamówienie</title>
</head>

<body bgcolor="#7fffd4", text="#008b8b">
<!--treść strony-->
<h1></h1>
<form action = "/summary">

    <fieldset>
        <legend>Zawartość koszyka:</legend>
    </fieldset>



    <fieldset>
        <legend>Metody dostawy</legend>
        <select name="dostępne metody" size 1>
            <option>odbiór osobisty</option>
            <option>kurier DHL</option>
            <option>paczkomat</option>
            <option>kurier za pobraniem</option>
        </select>


    </fieldset>

    <fieldset>
        <legend>Metody płatności</legend>
        <select name="dostępne metody" size 1>
            <option>przelew</option>
            <option>payU</option>
        </select>

    </fieldset>

    <fieldset>

        <div>
            <input type="checkbox" id="regulamin[]" name="regulamin">
            <label>zapoznałem się z treścią regulaminu i akcepuję jego postanowienia</label>

        </div>


    </fieldset>

    <div>
        <input type="submit" class ="btn btn-success" value="Zamawiam" />
    </div>


</form>

</body>
</html>