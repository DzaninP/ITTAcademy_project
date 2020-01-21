
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="dao.CardDao"%>
        <jsp:useBean id="u" class="bean.Card"></jsp:useBean>
        <jsp:setProperty property="*" name="u"/>  
        <%
            CardDao.delete(u);
            response.sendRedirect("viewcard.jsp");
        %> 
    </body>
</html>
