<%-- 
    Document   : login
    Created on : Dec 1, 2023, 11:15:27 AM
    Author     : khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login </title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    <body>
      <div class="text">
         <img src="images/logo.jpg" alt="logo">
         <p id="txt_field">Welcome to GrowMore</p>
        <p>NonProfitable Fundraising Platform!</p>
      </div>
        <div class="container">
           <header>Login </header>
           <form action="login" method="post">
            <div class="input-field">
               <input type="text"  name="username" required>
               <label>UserName</label>
            </div>
               <div class="input-field">
               <input class="pswrd" type="password"  name="password" required>
               
               <label>Password</label>
            </div>
               <% if(request.getAttribute("errorMessage")!=null  )
              { %>
              <p style="color:red;"> Invalid Username or Password</p>
             <%  }%>
             
            <div class="button">
               <div class="inner"></div>
               <button>LOGIN</button>
            </div>
         </form>
       
         <div class="signup">
            Don't have an account?<a href="signup.jsp">SignUp </a>
         </div>
       </div>  
        
     
    </body>
</html>
