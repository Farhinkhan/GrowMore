package com.fundraising;

 import jakarta.servlet.RequestDispatcher;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 *
 * @author khan
 */
public class login extends HttpServlet {

 

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
             String pass =  request.getParameter("password");
              try{
          Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/Fundraising","root","Root");
         PreparedStatement ps=con.prepareStatement("select * from signup where username=? and paasword=?");
         ps.setString(1, username);
         ps.setString(2,pass);
         ResultSet rs=ps.executeQuery();
         if(rs.next()){
           HttpSession session=request.getSession();
           session.setAttribute("username", username);
           RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
          rd.forward(request,response);  
         }
         else{  
         request.setAttribute("errorMessage","Invalid username or password");
         request.getRequestDispatcher("login.jsp").forward(request,response);
         }
         }catch (ServletException | IOException | ClassNotFoundException | SQLException e){
       System.out.println(e);
       }
         
       
    }
}