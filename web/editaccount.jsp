
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="dao.AccountDao"%>  
        <jsp:useBean id="a" class="bean.Account"></jsp:useBean>  
        <jsp:setProperty property="*" name="a"/> 

        <%
            int i = AccountDao.update(a);
            response.sendRedirect("viewaccount.jsp");
        %>  
    </body>
</html>
