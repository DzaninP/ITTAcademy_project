

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="dao.CardDao,bean.Card"%>  

        <%
            String id = request.getParameter("id");
            Card u = CardDao.getRecordById(Integer.parseInt(id));
        %> 

        <h1>Edit Form</h1>

        <form action="editcard.jsp" method="post"> 
            <input type="hidden" name="id" value="<%=u.getId()%>"/>  

            <table>
                <tr><td>Card name:</td><td>  
                        <input type="text" name="cardName" value="<%= u.getCardName()%>"/></td></tr> 
                <tr><td>Card info:</td><td>
                        <input type="text" name="cardInfo" value="<%= u.getCardInfo()%>"/></td></tr> 
                <tr><td>Card open:</td><td>
                        <input type="text" name="cardOpen" value="<%= u.getCardOpen()%>"/></td></tr> 
                <tr><td>Card management</td><td>
                        <input type="text" name="cardManagment" value="<%= u.getCardManagment()%>"/></td></tr> 
                <tr><td colspan="2"><input type="submit" value="Edit Card"/></td></tr> 
            </table>
    </body>
</html>
