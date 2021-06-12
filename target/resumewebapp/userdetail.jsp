<%-- 
    Document   : user
    Created on : Sep 18, 2020, 6:33:14 PM
    Author     : Parvin
--%>

<%@page import="com.company.entity.User" %>
<%@page import="com.company.main.Context" %>
<%@page import="com.company.dao.inter.UserDaoInter" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<%
 User u = (User) request.getAttribute("user");
%>
<div>
     <form action="userdetail" method="POST">
         <input type="hidden" name="action" value="update"/>
         <input type="hidden" name="id" value="<%=u.getId()%>"/>

        <lebel for="name">name:</lebel>
        <input type="text" name="name" value="<%=u.getName()%>"/>

        <br/>
        <lebel for="surname">surname:</lebel>
        <input type="text" name="surname" value="<%=u.getSurname()%>"/>
        <input type="submit" name="save" value="Save"/>

</form>
</div>
</body>
</html>
