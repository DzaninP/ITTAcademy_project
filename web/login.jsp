
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css">
        <title>LOGIN</title>
    </head>
    <body>
        <form action="login" method="POST">
        <div class="login-box">
            <div class="textbox">
                <input type="text" name="username" placeholder="Username">
            </div>
            <div class="textbox">
                <input type="password" name="password" placeholder="Password">
            </div>
            <input type="submit" value="Login" class="btn">
        </div>
        </form>
    </body>
</html>
