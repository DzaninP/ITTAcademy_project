

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="dao.CardDao,bean.*,java.util.*"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <h1>Card List</h1>

        <%
            List<Card> list = CardDao.getAllRecords();
            request.setAttribute("list", list);
        %>  

        <table border="1" width="90%">
            <tr><th>Id</th><th>Card name</th><th>Card info</th><th>Card open</th>  
                <th>Card management</th><th>Edit</th><th>Delete</th></tr>
            <c:forEach items="${list}" var="c">
                <tr><td>${u.getId()}</td><td>${u.getCardName()}</td><td>${u.getCardInfo()}</td>  
                    <td>${u.getCardOpen()}</td><td>${u.getCardManagment()}</td>
                    <td><a href="editformcard.jsp?id=${u.getId()}">Edit</a></td>  
                    <td><a href="deletecard.jsp?id=${u.getId()}">Delete</a></td></tr> 
            </c:forEach>
    </body>
</html>
