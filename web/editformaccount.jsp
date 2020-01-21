

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="dao.AccountDao,bean.Account"%>  

        <%
            String id = request.getParameter("id");
            Account a = AccountDao.getRecordById(Integer.parseInt(id));
        %> 

        <h1>Edit Form</h1>

        <form action="editaccount.jsp" method="post"> 
            <input type="hidden" name="id" value="<%=a.getId()%>"/>  

            <table>
                <tr><td>Account name:</td><td>  
                        <input type="text" name="accountName" value="<%= a.getAccountName()%>"/></td></tr> 
                <tr><td>Account info:</td><td>
                        <input type="text" name="accountInfo" value="<%= a.getAccountInfo()%>"/></td></tr> 
                <tr><td>Account open:</td><td>
                        <input type="text" name="accountOpen" value="<%= a.getAccountOpen()%>"/></td></tr> 
                <tr><td>Account management</td><td>
                        <input type="text" name="accountManagment" value="<%= a.getAccountManagment()%>"/></td></tr> 
                <tr><td colspan="2"><input type="submit" value="Edit Account"/></td></tr> 
            </table>
    </body>
</html>
