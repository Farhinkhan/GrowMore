<%-- 
    Document   : index
    Created on : Dec 1, 2023, 11:13:16 AM
    Author     : khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" href="css/about.css">

    </head>
    <body onload="loginChck()">
        <div class="topnav" id="myTopnav">
            <div class="logo_item">
                <img src="images/logo.jpg" alt="">
                <p><b>GrowMore</b><p>
            </div>
            <a href="#">Home</a>
            <div class="dropdown">
                <a class="dropbtn">Fundraise For <i id="icon" class="fa fa-caret-down"></i></a>
                <div class="dropdown-content">
                    <a  onclick="buttonClick(1)">Medical Treatment</a>
                    <a  onclick="buttonClick(1)">Education</a>
                    <a  onclick="buttonClick(1)">Animals</a>
                    <a  onclick="buttonClick(1)">Business</a>
                </div>
            </div>
            <a href="#about">About Us</a>
            <a href="contact.jsp">Contact Us</a>
            
       <!--login Section -->     
       
            <div class="login_nav" id="login_nav">          
           <i id="icn" class="fa fa-user"></i>
            <div class="login-content" id="logincontainer">
                 <a href="login.jsp" id="login">Login</a>
                 <a href="signup.jsp" id="signup">Sign Up</a>      
                  </div>
           <div class="logout">   
               <input type="button" class="logoutbtn" id="logoutbtn" onclick="logoutfnc();" value="Logout"/>               
             </div>
            </div>
<!--login Section --> 

        </div>
        <div class="text">
           <button onclick="buttonClick(1)">Start a fundraiser -it's FREE</button>
            <h1> GrowMore</h1>
            <p>Free Fundraising Platform!<br><br>
                Raise Funds online for medical emergencies and 
                <br>social causes</p>
            <br> 
        </div>
      
<div class="heading">
            <img src="images/fundraise.jpg" alt="">
            <h1>Start a Fundraiser in three simple steps</h1>  
        </div>
        <div class="img1">
            <img src="images/start.jpg" id="img1"> 
            <div class="content1">
                <h3>1.Start your fundraiser</h3>
                <p>It’ll take only 2 minutes. Just tell us a few details<br> 
                    about you and the ones you are raising funds for.<p>
            </div>
        </div>
        <div class="img2">
            <img src="images/share.jpg"  id="img2"> 
            <div class="content2">
                <h2>2.Share your fundraiser</h2>
                <p>All you need to do is share the fundraiser with your<br>
                    friends and family. In no time, support will start <br>
                    pouring in.<br></p>
            </div>
        </div>
        <div class="img3">
            <img src="images/money.jpg" id="img3"> 
            <div class="content3">
                <h2>3.Withdraw Funds</h2>
                <p>The funds raised can be withdrawn without<br>
                    any hassle directly to your bank account.</p>
            </div>
        </div>
        <br><br>
        <div class="container">
            <h1 id="cont">Causes you can raise funds for</h1>
            <h2>Be it for a personal need, social cause or a creative idea
                -you can count on us<br> the project that you want to raise funds for.</h2>
            <br>
            <div class="btn">
                <button onclick="buttonClick(2)"><i class="fa fa-medkit"></i> Medical</button>
                <button onclick="buttonClick(3)"><i class="fa fa-graduation-cap"></i> Education</button>
                <button onclick="buttonClick(4)"><i class="fa fa-paw"></i> Animal</button>
                <button onclick="buttonClick(5)"><i class="fa fa-leaf"></i>Business</button>
            </div>
        </div>
            <form id="myForm" > 
        <input type="hidden" id="sessionData" name="sessionData" value="${sessionScope.username}">
        </form>
</div>
      <h1 id="activefr">Active Fundraisers</h1>  
       <!--cards -->
       <div class="cards">
            <div class="image">
             <img src="img/fr2.jpg" alt="">
            </div>
            <div class="Title">
              <h1>My Baby Battles For Her Life</h1>
            </div>
            <div class="des">
                <p> Kushira S who is suffering from Acute lymphoblastic leukemia - philadelphia chromosome positive.
                    <b>Rs.500000</b> is  required to pay for all the medical expenses. Please help us raise this amount and help during this time of need.
                      We need your Support and help. Please do Contribute. </p>
                <button id="button" onclick="window.location.href='donate.jsp';">Donate</button>
            </div>
        </div>
       <div class="cards">
            <div class="image">
             <img src="img/fr9.jpg" alt="">
            </div>
            <div class="Title">
                <h1>Support Spectrum Strides Cause - Donate To UMMEED</h1>
            </div>
            <div class="des">
                <p>Ummeed Child Development Center with the vision of helping children with and at
                   risk of developmental disabilities reach their full potential and be included in society.
                   please contribute to help children with disabilities for their education.</p>
                <button id="button" onclick="window.location.href='donate.jsp';">Donate</button>
            </div>
        </div>
         <div class="cards">
            <div class="image">
             <img src="img/fr3.jpg" alt="">
            </div>
            <div class="Title">
              <h1>Support Twin Babies Of Mohini To Get A Healthy Life</h1>
            </div>
            <div class="des">
                <p> Twin babies has been battling severe respiratory distress due to excessive low birth weight.  
                    The babies need immediate NICU care/ stay for a minimum of 45 days.NICU Care and other Treatment
                    expenses are <b>Rs.14,00,00/- (Fourteen Lac)</b>. Please support us in this time of need.</p>
                <button id="button" onclick="window.location.href='donate.jsp';">Donate</button>
            </div>
            </div>
            <div class="main">
        <div class="cards">
            <div class="image">
             <img src="img/fr6.jpg" alt="">
            </div>
            <div class="Title">
              <h1>Help Tanveer Achieve His Educational Dreams!</h1>
            </div>
            <div class="des">
                <p>My name is Tanveer Alam, and I find myself at a crucial crossroads in my educational journey. Currently pursuing a B.Tech degree, 
                   I am financial issues financially to achieve my dreams. Please Support me to achieve my dreams and goals.</p>
                <button id= "button" onclick="window.location.href='donate.jsp';">Donate</button>
            </div>
        </div>
         <div class="cards">
            <div class="image">
             <img src="img/fr17.jpg" alt="">
            </div>
            <div class="Title">
              <h1>Help Snowy Fight FIP</h1>
            </div>
            <div class="des">
                <p>Snowy is a 1-year-old feral cat who has been diagnosed with wet FIP (Feline Infectious  Peritonitis).
                    The hospital charges for the entire 84-day treatment will  be <b>Rs 150000</b>.  With your support or sponsorship, Snowy can
                   complete the treatment and make a full recovery. Please Support us to get her a new life.
                   </p>
               <button id="button" onclick="window.location.href='donate.jsp';">Donate</button>
            </div>
         </div>
             <div class="cards">
            <div class="image">
             <img src="img/fr22.jpg" alt="">
            </div>
            <div class="Title">
              <h1>Support to Achieve goals</h1>
            </div>
            <div class="des">
                <p>Hii,My name is John Doe .I am reaching out to share an exciting opportunity . I am in the process of launching my business startup.
                    I have launched a fundraising campaign to secure the necessary funds for our startup phase.Ineed <b> Rs.2,00,00 </b> for my business startup.
                    Need your support to achieve this goal.</p>
                <button id="button" onclick="window.location.href='donate.jsp';">Donate</button>
            </div>
        </div>
        </div>
        <div id="about">
          <div class="abt"><div class="abt_cont"><img src="images/logo.jpg" alt="">
            <h1>GrowMore</h1></div>
            <h2>For any queries :</h2>
           <p>Email:farheenkhan96938@gmail.com<br><br>
              Contact No: +91 9981779765</p>
            </div> 
              <div class="about_text">
                <h1>About Us</h1>
                <h2>What we do?</h2>
                <p>we have started online Fundraising platform in  <br>
                   India.The belief that people are inherently humane <br>
                   and  willing to help forms the crux of what we <br>
                   do.We have been able to use technology to its best <br>
                   and make online giving a seamless and transparent  <br>
                   process. Anyone across the country, irrespective of  <br>
                   their socio-economic background can raise a fundraiser on <br>
                   <b>GrowMore</b>. We believe that in the years to come <br>
                   online giving will be ‘the’ way to charitable and <br>
                   humanitarian acts. </p>
              
                <h2>How to start a fundraiser with us?</h2>
                <p>Starting a fundraiser is easy, as anyone can start a DIY<br> 
                  (Do-It-Yourself) campaign. The campaign organizers are <br>
                  information about the beneficiary - the person/group/NGO for whom <br>
                  required to sign up and enter basicthe funds are raised. Enter<br>
                  details about the campaign (such as the story/cause) and required  <br>
                  fund amount along with the timeline by which the funds are  <br>
                  required.begin a fundraiser on <b>GrowMore</b> for personal<br>
                  or societal needs. </p>
                  
            </div>
          
        </div>
     
        
         
        
        <script>
           
            //var abc = "";*/
            
           
           // sessionStorage.setItem("userInf",abc);
             document.addEventListener('DOMContentLoaded', function() {
                 var myForm = document.getElementById('myForm');
                   var chck = myForm.elements['sessionData'].value;                  
                                  
                 var loginbtn = document.getElementById("logincontainer");
                    console.log(loginbtn);
                    var logoutbtn = document.getElementById("logoutbtn");
                    console.log(logoutbtn);
                    var login_nav = document.getElementById("login_nav");
                    var loginbtn = document.getElementById("logincontainer");                                        
                    var logoutbtn = document.getElementById("logoutbtn");
                 
                 if (chck === null || chck ==="") {
                           
                        login_nav.addEventListener("mouseover", function() {
                        loginbtn.style.display = "block";
                        logoutbtn.style.display = "none";
                        });                         
                        
                        login_nav.addEventListener("mouseout", function() {
                        loginbtn.style.display = "none"; 
                        logoutbtn.style.display = "none";
                        });                        
                        
                }
                else{                   
                     login_nav.addEventListener("mouseover", function() {
                        loginbtn.style.display = "none";
                        logoutbtn.style.display = "block";
                        });                         
                        
                        login_nav.addEventListener("mouseout", function() {
                        loginbtn.style.display = "none"; 
                        logoutbtn.style.display = "none";
                        });
                        
                    }
                    
    });
           
            
             function buttonClick(buttonNumber){
                 
                     <%  session=request.getSession(false) ;
                     if(session== null || session.getAttribute("username")==null){
                     %>
                             
                     alert("You are not logged in.Please login to view this page.");
                     window.location.href="login.jsp";
                     <%
                         }else{
                        %>
                                
                                
                                
                      var url = '';

                      switch (buttonNumber) {
                       case 1:
                            url = 'fundraiser.jsp';
                            break;
                        case 2:
                            url = 'medical.jsp';
                            break;
                        case 3:
                             url = 'education.jsp';
                             break;
                        case 4:
                             url = 'animal.jsp';
                             break;
                         case 5:
                             url='business.jsp';
                             break;
                        default:
                            return;
                      }

                     window.location.href = url;
                    <% } %>
               }
               function logoutfnc(){
              
                           
                
                var loginbtn = document.getElementById("logincontainer");
                    console.log(loginbtn);
                    var logoutbtn = document.getElementById("logoutbtn");
                    console.log(logoutbtn);
                    var login_nav = document.getElementById("login_nav");
                    var loginbtn = document.getElementById("logincontainer");                                        
                    var logoutbtn = document.getElementById("logoutbtn");               
                 
                    login_nav.addEventListener("mouseover", function() {
                        loginbtn.style.display = "block";
                        logoutbtn.style.display = "none";
                        });                         
                        
                        login_nav.addEventListener("mouseout", function() {
                        loginbtn.style.display = "none"; 
                        logoutbtn.style.display = "none";
                        });   
            }
        </script>  
       
    </body>
    
</html>