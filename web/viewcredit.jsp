
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@page import="dao.CreditDao,bean.*,java.util.*"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <h1>Credit List</h1>

        <%
            List<Credit> list = CreditDao.getAllRecords();
            request.setAttribute("list", list);
        %>  

        <table border="1" width="90%">
            <tr><th>Id</th><th>Credit name</th><th>Credit info</th><th>Credit amount</th>  
                <th>Repayment credit</th><th>Edit</th><th>Delete</th></tr>
                    <c:forEach items="${list}" var="c">
                <tr><td>${c.getId()}</td><td>${c.getCreditName()}</td><td>${c.getCreditInfo()}</td>  
                    <td>${c.getCreditAmount()}</td><td>${c.getRepaymentCredit()}</td>
                    <td><a href="editform.jsp?id=${c.getId()}">Edit</a></td>  
                    <td><a href="deletecredit.jsp?id=${c.getId()}">Delete</a></td></tr> 
                </c:forEach>
    </body>
</html>
