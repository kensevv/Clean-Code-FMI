<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <div class="FormBox">
        <div class="inside">

            <h1>Kenan's Car Rental System</h1>
            <h2 style="color: grey;">Login</h2>
            
           <form method="get" action="LoginServlet">
                <input class="text" id="email" type="text" name="email" id="email" placeholder="Email" required> 
                <input class="text" id="password" type="password" name="password" id="password" placeholder="Password" required>
            <div class="redirect">
                <button type="submit" id="submit"> Submit </button>
                <a id="link" href="register.jsp">Create account</a>
            </div>
             </form>
        </div>
        
        </div>
</body>
<style><%@include file="css/loginStyle.css"%></style>
</html>