<%-- 
    Document   : fundraiser
    Created on : Dec 1, 2023, 11:15:12 AM
    Author     : khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Fundraising Form</title>
        <link rel="stylesheet" href="css/fundraiser.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    </head>
    <body>
        <form id="msForm" action="fundraiserServlet" method="post" enctype="multipart/form-data">
            <!-- start step indicators -->
            <div class="form-header">
                <span class="stepIndicator">1</span>
                <span class="stepIndicator">2</span>
                <span class="stepIndicator">3</span>
              </div>
              <!-- end step indicators -->
    
            <!-- step one -->
            <div class="step">
                <h2 class="fs-title">Tell us about your fundraiser</h2>
                <input type="text" name ="frname" placeholder="Fundraiser Name">
                <input type="email" name="email" placeholder="Email" >
               
                <div><input type="text" name="cause" list="fund" placeholder="Reason for raising fund" >
                <datalist id="fund">
                  <option>Medical Treatment</option>
                  <option>Education</option>
                  <option>Animals</option>
                  <option>Business</option>
                </datalist>
                </div>
                <input type="text" name="amount" placeholder="How much(Rs.) do you want to raise?">
                <input type="text" name="relation" list="list" placeholder="Whom  are you raising fund for?">
                <datalist id="list">
                    <option value="Myself"></option>
                    <option value="Family Member"></option>
                    <option value="Friend"></option>
                    <option value="Pet or Animal"></option>
                    <option value="Colleague"></option>
                    <option value="Other"></option>
                </datalist>

                <input type="text" name ="contact" placeholder="Contact Number">
                <input type="text" name ="address" placeholder="Address">
               
            </div>
            
            <!-- step two -->
            <div class="step">
                <h2 class="fs-title">Beneficiary Details</h2> <hr>
                <input type="text" name ="bname" placeholder="Beneficiary Name">
                <input type="text" name="age" list="age" placeholder="Beneficiary's age">
                <datalist id="age">
                    <option value="Below 5 years"></option>
                    <option value="6-10 years"></option>
                    <option value="11-17 years"></option>
                    <option value="18-30 years"></option>
                    <option value="30-40 years"></option>
                    <option value="Above 40 years"></option>
                </datalist>
                <h3>Add fundraiser/beneficiary image</h3>
                <input type="file" name="img" accept="image/*">
                <h3>Add Documents</h3>
                <input type="file" name="imgdoc" placeholder="Documents " accept="image/*, application/pdf">
                
            </div>
            <!-- step three -->
            <div class="step">
                <h2 class="fs-title">Tell the story about why you are<br> 
                                     raising a Fund</h2> <hr>
                <textarea name="description" minlength="50"  placeholder="Write a story that justice to your cause and make supporter click the donate button." required="required"></textarea>
                
            </div>
    
            <!-- start previous / next buttons -->
            <div class="form-footer">
                <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
               </div>
            <!-- end previous / next buttons -->
          </form>
        <script>
              var currentTab = 0; // Current tab is set to be the first tab (0)
        showTab(currentTab); // Display the current tab
        
        function showTab(n) {
          // This function will display the specified tab of the form...
          var x = document.getElementsByClassName("step");
          x[n].style.display = "block";
          //... and fix the Previous/Next buttons:
          if (n === 0) {
            document.getElementById("prevBtn").style.display = "none";
          } else {
            document.getElementById("prevBtn").style.display = "inline";
          }
          if (n === (x.length - 1)) {
            document.getElementById("nextBtn").innerHTML = "Submit";
          } else {
            document.getElementById("nextBtn").innerHTML = "Next";
          }
          //... and run a function that will display the correct step indicator:
          fixStepIndicator(n);
        }
        
        function nextPrev(n) {
          // This function will figure out which tab to display
          var x = document.getElementsByClassName("step");
          // Exit the function if any field in the current tab is invalid:
          if (n === 1 && !validateForm()) return false;
          // Hide the current tab:
          x[currentTab].style.display = "none";
          // Increase or decrease the current tab by 1:
          currentTab = currentTab + n;
          // if you have reached the end of the form...
          if (currentTab >= x.length) {
            // ... the form gets submitted:
            document.getElementById("msForm").submit();
            return false;
          }
          // Otherwise, display the correct tab:
          showTab(currentTab);
        }
        
        function validateForm() {
          // This function deals with validation of the form fields
          var x, y, i, valid = true;
          x = document.getElementsByClassName("step");
          y = x[currentTab].getElementsByTagName("input");
          // A loop that checks every input field in the current tab:
          for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value ==="") {
              // add an "invalid" class to the field:
              y[i].className += " invalid";
              // and set the current valid status to false
              valid = false;
            }
          }
          // If the valid status is true, mark the step as finished and valid:
          if (valid) {
            document.getElementsByClassName("stepIndicator")[currentTab].className += " finish";
          }
          return valid; // return the valid status
        }
        
        function fixStepIndicator(n) {
          // This function removes the "active" class of all steps...
          var i, x = document.getElementsByClassName("stepIndicator");
          for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
          }
          //... and adds the "active" class on the current step:
          x[n].className += " active";
        }
        </script>
    </body>
</html>
