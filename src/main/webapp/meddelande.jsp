<%-- 
    Document   : meddelande
    Created on : 2020-maj-06, 09:32:56
    Author     : Joel
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
</head>
<body>
    <center>
        <h3><%=request.getAttribute("Message")%></h3>
        <br>
        <p><a href="index.html">Till startsidan tryck här</a></p>

    </center>
    
</body>
</html>