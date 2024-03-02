/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fundraising;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import org.json.JSONException;
//import org.json.simple.JSONObject;
import org.json.JSONObject;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class hello
 */

public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
     * @param request
     * @param response
     * @throws jakarta.servlet.ServletException
     * @throws java.io.IOException
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
     * @param request
     * @param response
     * @throws jakarta.servlet.ServletException
     * @throws java.io.IOException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		try {
		RazorpayClient razorpay = new RazorpayClient("rzp_test_SFisXpqSlG6gcg", "COgNAEjFL54gyrlZD0up75t1");

		JSONObject orderRequest = new JSONObject();
		orderRequest.put("amount",50000);
		orderRequest.put("currency","INR");
		orderRequest.put("receipt", "receipt#1");
		JSONObject notes = new JSONObject();
		notes.put("notes_key_1","Tea, Earl Grey, Hot");
		orderRequest.put("notes",notes);

		 com.razorpay.Order order = razorpay.orders.create(orderRequest);
		 System.out.println("Order ID: " + order.get("id"));
         System.out.println("Order Amount: " + order.get("amount"));

         // You can send the order information back in the response if required
         response.setContentType("application/json");
         response.getWriter().write(order.toString());
		}
		catch(RazorpayException | IOException | JSONException e) {
	         response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error creating Razorpay order");
		}
                
	}
        
        

}