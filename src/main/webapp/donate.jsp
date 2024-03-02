<%-- 
    Document   : donate
    Created on : Dec 1, 2023, 11:19:10 AM
    Author     : khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Donate </title>
        <link rel="stylesheet" type="text/css" href="css/donate.css" />
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
       <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
       <script src="donate.js" defer></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    </head>
    <body>
      <div class="text">
      <h1 class="heading">Grow More</h1>
      </div>
      <div class="container">
      <div class="center">
          <h1>Donate</h1>
          <form  action=""  method="post">
              <div class="txt_field">
                <i class="fa fa-user icon"></i>
                <input type="text"  id="username" name="username" required>
                <span></span>
                <label>Name</label>
                
                  
              </div>
              <div class="txt_field">
                <i class="fa fa-envelope icon"></i>
                <input type="email" id="email" name="email" required>
                <span></span>
                <label>Email</label>
              </div>
              <div class="txt_field">
                <i class="fa fa-rupee icon"></i>
                <input type="text" id="money" name="amount" required>
                <span></span>
                <label>How much money do you want to donate?</label>
              </div
              <span></span>
            
              <div class="txt_field">
                <i class="fa fa-mobile icon"></i>
                <input type="tel" id="contactno" name="contactnum" required>

                <label>Contact Number</label>
              </div>
              <div class="txt_field">
                <i class="fa fa-building icon"></i>
                <input type="text" id="address" name="address" required>
                <span></span>
                <label>Address</label>
              </div>
              
              <button type="submit" class="btn" id="rzp-button1" onclick="payment()">Proceed to pay</button>
              
              
          </form>
          
      </div>
  </div>
              

    </body>
</html>
