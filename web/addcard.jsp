<%@page import="dao.CardDao"%>
<jsp:useBean id="u" class="bean.Card"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Card</title>
    </head>
    <body>
        <%
        int i = CardDao.save(u);
          if(i>0){
            response.sendRedirect("addcard-success.jsp");
          }else{
            response.sendRedirect("addcard-error.jsp");
          }
        %>
    </body>
</html>
