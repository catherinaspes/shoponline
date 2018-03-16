<%@page language ="Java" contentType="text/html" pageEncoding="utf-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title> Twoje dane:</title>
</head>

<body>
<!--treść strony-->
<h1></h1>
<form action = "/thanks">

<fieldset>
    <legend>Dane osobowe</legend>
    <div>
        <input type="text" id="firstname" name="firstname" placeholder="Podaj imię">
    </div>
    <div>
        <input type="text" id="lastname" name="lastname" placeholder="Podaj nazwisko">
    </div>

    <div>

        <input type="email" id ="email" name="email" placeholder ="Podaj adres e-mail">
    </div>
    <div>

        <input type="number" id="number" name="number" placeholder="Podaj numer telefonu">
    </div>

</fieldset>


<fieldset>
    <legend>adres dostawy</legend>

    <div>
        <input type="text" id="city" name="city" placeholder="Podaj miasto">
    </div>

    <div>
        <input type="text" id="code" name="code" placeholder="Podaj kod pocztowy">
    </div>

    <div>
        <input type="text" id="street" name="street" placeholder="Podaj ulicę">
    </div>

    <div>
        <input type="text" id="house_number" name="house_number" placeholder="Podaj numer domu i mieszkania">
    </div>
</fieldset>
    <div>
        <p>Dodatkowe info dla sprzedającego:</p>
        <textarea name ="komentarz "
                  id ="komentarz "
                  rows ="7"
                  placeholder ="Dodatkowe info dla sprzedającego:">
		</textarea >
    </div>

    </fieldset>

    <div>
        <input type="submit" value="Potwierdź" />
    </div>


</form>

</body>
</html>