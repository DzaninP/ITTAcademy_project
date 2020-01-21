

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="card.css">
        <title>Card</title>
    </head>
    <body>
        <h1>List of cards</h1>
            <div class="box">
                Debit card
        </div>
        <div class="box1">
                Credit card
        </div>
        <div class="box2">
                Electron Pre-paid card
        </div>
        <button class="btn" type="button" onclick="window.location.href='http://localhost:8080/ITAcademy_project/debitCard.jsp'">Next </button>
        <button class="btn1" type="button" onclick="window.location.href='http://localhost:8080/ITAcademy_project/creditCard.jsp'">Next </button>
        <button class="btn2" type="button" onclick="window.location.href='http://localhost:8080/ITAcademy_project/prepaidCard.jsp'">Next </button>
    </body>
</html>