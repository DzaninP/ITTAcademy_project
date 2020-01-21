
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="dao.AccountDao,bean.*,java.util.*"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <h1>Account List</h1>

        <%
            List<Account> list = AccountDao.getAllRecords();
            request.setAttribute("list", list);
        %>

        <table border="1" width="90%">
            <tr><th>Id</th><th>Card name</th><th>Card info</th><th>Card open</th>  
                <th>Card management</th><th>Edit</th><th>Delete</th></tr>
            <c:forEach items="${list}" var="c">
                <tr><td>${a.getId()}</td><td>${a.getAccountName()}</td><td>${a.getAccountInfo()}</td>  
                    <td>${a.getAccountOpen()}</td><td>${a.getAccountManagment()}</td>
                    <td><a href="editformaccount.jsp?id=${a.getId()}">Edit</a></td>  
                    <td><a href="deleteaccount.jsp?id=${a.getId()}">Delete</a></td></tr> 
            </c:forEach>
</body>
</html>
