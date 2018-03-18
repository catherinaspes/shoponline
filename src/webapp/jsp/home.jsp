<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
</head>
    <style>
        body {
            background-color: #8a041c;
        }
        /* Remove the navbar's default rounded borders and increase the bottom margin */
        .navbar {
            margin-bottom: 50px;
            border-radius: 0;
        }

        /* Remove the jumbotron's default bottom margin */
        .jumbotron {
            margin-bottom: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #8b0000;
            padding: 25px;
        }
    </style>
<body bgcolor="#8b0000">
<div class="jumbotron">
    <div class="container text-center">
        <h1>SKLEP Z GRAMI na PS4</h1>
        <p>Poznaj wirtualną rzeczywistość !!!</p>
    </div>
</div>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Nowości</a></li>
                <li><a href="#">Gry</a></li>
                <li><a href="#">Promocje</a></li>
                <li><a href="#">Nasze sklepy</a></li>
                <li><a href="#">Kontakt</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Zaloguj</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Koszyk</a></li>
                <form method="get" action="/basket">
                    <button type="submit" name="Koszyk">Koszyk</button>
                </form>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div class="panel panel-primary">
                <div class="panel-heading">WINA BIAŁE</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Wybierz swoje ulubione wino</div>
                <form method="get" action="/product">
                    <button type="submit" name="Koszyk">Wybierz swoje ulubione wino</button>
                </form>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="panel panel-danger">
                <div class="panel-heading">WINA RÓŻOWE</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Wybierz swoje ulubione wino</div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="panel panel-success">
                <div class="panel-heading">WINA CZERWONE</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Wybierz swoje ulubione wino</div>
            </div>
        </div>
    </div>
</div><br>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div class="panel panel-primary">
                <div class="panel-heading">WINA WYTRAWNE I PÓŁWYTRAWNE</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Wybierz swoje ulubione wino</div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="panel panel-primary">
                <div class="panel-heading">WINA SŁODKIE I PÓŁSŁODKIE</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Wybierz swoje ulubione wino</div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="panel panel-primary">
                <div class="panel-heading">WINA MUSUJĄCE</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Wybierz swoje ulubione wino</div>
            </div>
        </div>
    </div>
</div><br><br>


<form action="/logout" method=post">
    <input type="submit" value="Logout !"/>
</form>

</body>

</html>