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
public class SignupServlet extends HttpServlet {

    

   
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
             String userEmail = request.getParameter("userEmail");
             String pass =  request.getParameter("password");
             String contact =  request.getParameter("contactnum"); 
             String address =  request.getParameter("address");
       try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/Fundraising","root","Root");
        PreparedStatement pstmt = con.prepareStatement("select * from signup where email= ?");
        pstmt.setString(1,userEmail);
         ResultSet rs=pstmt.executeQuery();
         
         if(rs.next()){
             request.setAttribute("errorMessage","User already exists");
             request.getRequestDispatcher("signup.jsp").forward(request, response);
         }
         else{
         pstmt = con.prepareStatement("INSERT INTO signup VALUES (?, ? , ? ,? , ? )");
         pstmt.setString(1,username);
         pstmt.setString(2,userEmail);
         pstmt.setString(3, pass);
         pstmt.setString(4, contact);
         pstmt.setString(5, address);
         pstmt.executeUpdate();
         request.getRequestDispatcher("SignupSuccess.jsp").forward(request, response);
         }
       }
       
       catch (ServletException | IOException | ClassNotFoundException | SQLException e){
       System.out.println(e);
       }
        
        }
    }

    
