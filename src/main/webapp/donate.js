/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


/* global cossole */
$(document).ready(function() {
    // Call the payment function when the document is ready
    payment();
});

const payment = () => {
    console.log("pay");
    var amount = document.getElementById("money").value;
    console.log(amount);
    console.log("error");
    $.ajax({
        url: 'payment',
        contentType: 'application/json',
        type: 'POST',
        dataType: 'json',
        data: JSON.stringify({ amount:100 }),
        success: function(response) {
            console.log(response);
            console.log(response.id);
            if (response.status === "created") {
                // Configure Razorpay options
                /*const options = {
                    key: "rzp_test_SFisXpqSlG6gcg",
                    amount: response.amount,
                    currency: "INR",
                    name: "Grow More",
                    description: "Test Transaction",
                    image: "https://example.com/your_logo",
                    order_id: response.id,
                    handler: function (response) {
                        alert(response.razorpay_payment_id);
                        alert(response.razorpay_order_id);
                        alert(response.razorpay_signature);
                    },
                    prefill: {
                        name: response.customerName,
                        email: response.customerEmail,
                        contact: response.customerContact
                    },
                    notes: {
                        address: "Razorpay Corporate Office"
                    },
                    theme: {
                        color: "#3399cc"
                    }
                };
*/ var amount=document.getElementById("money").value;
            var options = {
    "key": "rzp_test_SFisXpqSlG6gcg", // Enter the Key ID generated from the Dashboard
    "amount":response.amount, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
    "currency": "INR",
    "name": "Grow More",
    "description": "Test Transaction",
    "image": "images/logo.jpg",
    "order_id": response.id, 
    "callback_url": "donateservlet",
    "prefill": {
        "name": document.getElementById("username").value,
        "email":document.getElementById("email").value,
        "contact":document.getElementById("contactno").value
    },
    "notes": {
        "address": "Razorpay Corporate Office"
    },
    "theme": {
        "color": "#3399cc"
    }
};
                // Create a new instance of Razorpay
                const rzp1 = new Razorpay(options);

                // Handle payment failed event
                rzp1.on('payment.failed', function (response) {
                    console.log('Payment Failed:', response);
                });

                // Attach click event to the Razorpay button
                document.getElementById('rzp-button1').onclick = function (e) {
                    rzp1.open();
                    e.preventDefault();
                };
            }
        },
        error: function (error) {
			cossole.log('Error');
            console.log(error);
        }
    });
};