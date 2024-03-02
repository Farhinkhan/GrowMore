/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fundraising;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author khan
 */
public class donateservlet extends HttpServlet {

    

   
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             response.setContentType("text/html;charset=UTF-8");
             PrintWriter out = response.getWriter();
             String username = request.getParameter("username");
             String userEmail = request.getParameter("email");
             String amount =  request.getParameter("amount");
             String contact =  request.getParameter("contactnum"); 
             String address =  request.getParameter("address");
       try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/Fundraising","root","Root");
        PreparedStatement pstmt = con.prepareStatement("INSERT INTO donar VALUES (?, ? , ? ,? , ? )");
         pstmt.setString(1,username);
         pstmt.setString(2,userEmail);
         pstmt.setString(3, amount);
         pstmt.setString(4, contact);
         pstmt.setString(5, address);
         pstmt.executeUpdate();
         
       }
       
       catch (ClassNotFoundException | SQLException e){
       System.out.println(e);
       }
        response.sendRedirect("index.jsp");
        }
    }

    
