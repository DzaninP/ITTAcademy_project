
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%@page import="dao.CreditDao"%>  
        <jsp:useBean id="c" class="bean.Credit"></jsp:useBean>  
        <jsp:setProperty property="*" name="c"/> 

        <%
            int i = CreditDao.update(c);
            response.sendRedirect("viewcredit.jsp");
        %>  
    </body>
</html>
