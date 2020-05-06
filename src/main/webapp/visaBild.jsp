<%-- 
    Document   : visaBild
    Created on : 2020-maj-06, 13:38:11
    Author     : Sebastian
--%>

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
<div align="center">
    <img src="data:image/jpg;base64,${bild.base64Image}" width="240" height="300"/>
</div>
</body>
</html>