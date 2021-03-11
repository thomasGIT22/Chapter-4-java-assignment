<%-- 
    Document   : AddTwo
    Created on : Mar 4, 2021, 2:57:36 PM
    Author     : ragbr
--%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/main.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1 id="MyHeader">Hello Guest!</h1>
        <p id="MyPara">Please add two numbers and submit!</p>
        <form action="SumHandler" method="POST">
            <label for="num1">Enter a number:</label><br>
            <input type="text" name="num1" id="num1" value="<%= request.getAttribute("num1d")%>"> <%= request.getAttribute("error1") %><br><br>
            <label for="num2">Enter another number:</label><br>
            <input type="text" name="num2" id="num2" value="<%= request.getAttribute("num2d")%>"> <%= request.getAttribute("error2") %><br><br>
            <input type="submit" value="Submit">
        </form>
        <p>Result: <%= request.getAttribute("msg")%></p>
    </body>
</html>
