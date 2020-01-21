
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%@page import="dao.CreditDao,bean.Credit"%>  

        <%
            String id = request.getParameter("id");
            Credit c = CreditDao.getRecordById(Integer.parseInt(id));
        %> 
        
        <h1>Edit Form</h1>
        
        <form action="editcredit.jsp" method="post"> 
            <input type="hidden" name="id" value="<%=c.getId()%>"/>  
            
            <table>
                <tr><td>Credit name:</td><td>  
                        <input type="text" name="creditName" value="<%= c.getCreditName()%>"/></td></tr> 
                <tr><td>Credit info:</td><td>
                        <input type="text" name="creditInfo" value="<%= c.getCreditInfo()%>"/></td></tr> 
                <tr><td>Credit amount:</td><td>
                        <input type="text" name="creditAmount" value="<%= c.getCreditAmount()%>"/></td></tr> 
                <tr><td>Repayment credit:</td><td>
                        <input type="text" name="repaymentCredit" value="<%= c.getRepaymentCredit()%>"/></td></tr> 
                <tr><td colspan="2"><input type="submit" value="Edit Credit"/></td></tr> 
            </table>
    </body>
</html>
