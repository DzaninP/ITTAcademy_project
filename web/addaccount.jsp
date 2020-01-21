<%@page import="dao.AccountDao"%>
<jsp:useBean id="a" class="bean.Account"></jsp:useBean>
<jsp:setProperty property="*" name="a"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account</title>
    </head>
    <body>
               <%
        int i = AccountDao.save(a);
          if(i>0){
            response.sendRedirect("addaccount-success.jsp");
          }else{
            response.sendRedirect("addaccount-error.jsp");
          }
        %>
    </body>
</html>
