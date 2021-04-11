<%-- 
    Document   : AddTwo
    Created on : Mar 4, 2021, 2:57:36 PM
    Author     : ragbr
--%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="outer">
    <html lang="en">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="styles/main.css" rel="stylesheet" type="text/css"/>
            <title>Adding Machine</title>
        </head>
        <div id="container">
            <body>
                <h1 id="title">~ Add Two Numbers ~</h1>
                <p id="two">Please enter two numbers and submit!</p>
                <form action="SumHandler" method="POST">
                    <label for="num1">Enter a number:</label><br>
                    <input class="nums" type="text" name="num1" id="num1" value="${fn:escapeXml(num1d)}"> ${fn:escapeXml(error1)}<br><br>
                    <label for="num2">Enter another number:</label><br>
                    <input class="nums" type="text" name="num2" id="num2" value="${fn:escapeXml(num2d)}"> ${fn:escapeXml(error2)}<br><br>
                    <input id="submit" type="submit" value="Submit">
                </form>
                <p>Result: ${fn:escapeXml(msg)}</p>
            </body>
        </div>
    </html>
</div>
