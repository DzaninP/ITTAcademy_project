<%@page import="dao.CreditDao"%>
<jsp:useBean id="c" class="bean.Credit"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Credit</title>
    </head>
    <body>
        <%
        int i = CreditDao.save(c);
          if(i>0){
            response.sendRedirect("addcredit-success.jsp");
          }else{
            response.sendRedirect("addcredit-error.jsp");
          }
        %>
    </body>
</html>
