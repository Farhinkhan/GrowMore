<%-- 
    Document   : signup
    Created on : Dec 1, 2023, 11:15:48 AM
    Author     : khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>signup Page</title>
        <link rel="stylesheet" type="text/css" href="css/signup.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    </head>
    <body>
      <div class="text">
      <h1 class="heading">Grow More</h1>
      <h3 class="title"> NonProfitable Fundraising Platform.<br>
      Fundraise and Donate Seamlessly!</h3>
      </div>
      <div class="container">
      <div class="center">
          <h1>Sign Up</h1>
             <form method="post" action="SignupServlet">
              <div class="txt_field">
                <i class="fa fa-user icon"></i>
                <input type="text"  id="username" name="username" required>
                <span></span>
                <label>UserName</label>
                
                  
              </div>
              <div class="txt_field">
                <i class="fa fa-envelope icon"></i>
                <input type="email" id="email" name="userEmail" required>
                <span></span>
                <label>Email</label>
              </div>
              <div class="txt_field">
                  <i class="fa fa-key icon"></i>
                  <input type="password" id="password" name="password"  required>
                  <span></span>
                  <label>Password</label>
              </div>
              <div class="txt_field">
                  <i class="fa fa-key icon"></i>
                  <input type="password" id="cpassword" name="cpassword" required>
                  <span></span>
                  <label>Confirm Password</label>
              </div>
              <div class="txt_field">
                <i class="fa fa-mobile icon"></i>
                <input type="tel" id="contactno" name="contactnum" required>
                <span></span>
                <label>Contact Number</label>
              </div>
              <div class="txt_field">
                <i class="fa fa-building icon"></i>
                <input type="text" id="address" name="address" required>
                <span></span>
                <label>Address</label>
              </div>
               <% if(request.getAttribute("errorMessage")!=null  )
              { %>
              <p>User Already exists!</p>
             <%  }%>
             
              <button type="submit" class="btn">SignUp</button>
              
              <div class="signup_link">
                 Already Have an Account ? <a href="login.jsp">Login</a>
              </div>
          </form>
      </div>
  </div>
              <script>
               var password = document.getElementById("password");
               var confirm_password = document.getElementById("cpassword");

               function validatePassword(){
                 if(password.value !== confirm_password.value) {
                  confirm_password.setCustomValidity("Password Don't Match");
                 }
                else {
                        confirm_password.setCustomValidity('');
                      }
               }

               password.onchange = validatePassword;
               confirm_password.onkeyup = validatePassword;
              </script>
             
    </body>
</html>
