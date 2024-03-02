package com.fundraising;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
import java.sql.DriverManager;
@MultipartConfig()
@WebServlet(name = "fund", urlPatterns = {"/fund"})
public class fundraiserServlet extends HttpServlet {

    private static final String query = "INSERT INTO fund3 VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
    
  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String frname = request.getParameter("frname");
        String email =    request.getParameter("email");
        String cause =  request.getParameter("cause");
        String amount =  request.getParameter("amount");
        String relation =  request.getParameter("relation");
        String contact =  request.getParameter("contact"); 
        String address =  request.getParameter("address");
        String bname =  request.getParameter("bname"); 
        String age =  request.getParameter("age");
         InputStream inputstream =null;
             Part filePart=request.getPart("img");
             if(filePart != null){
                 System.out.println(filePart.getName());
                 System.out.println((int) filePart.getSize());
                 System.out.println(filePart.getContentType());
                 
                 inputstream=filePart.getInputStream();
             }
              InputStream inputstream1 =null;
             Part filePart1=request.getPart("imgdoc");
             if(filePart1 != null){
                 System.out.println(filePart1.getName());
                 System.out.println((int) filePart1.getSize());
                 System.out.println(filePart1.getContentType());
                 
                 inputstream1=filePart1.getInputStream();
             }
        String description =  request.getParameter("description");
             
            
             
        
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
          e.printStackTrace();
      }
        try{
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/Fundraising","root","Root");
         PreparedStatement pstmt = con.prepareStatement(query);
          pstmt.setString(1,frname);
          pstmt.setString(2,email);
          pstmt.setString(3,cause);
          pstmt.setString(4,amount);
         pstmt.setString(5,relation);
         pstmt.setString(6,contact);
         pstmt.setString(7,address);
         pstmt.setString(8,bname);
         pstmt.setString(9,age);
         if(inputstream != null){
             pstmt.setBlob(10, inputstream);
         }
         if(inputstream1 != null){
             pstmt.setBlob(11, inputstream1);
         }
          pstmt.setString(12,description);
          
          pstmt.executeUpdate();
          
        } catch (SQLException ex) {
          out.println(ex.getMessage());
          ex.printStackTrace();
      }
        switch(cause){
                case "Medical Treatment":
                    RequestDispatcher rd=request.getRequestDispatcher("medical.jsp");
                    rd.forward(request,response);
                    break;
                
                case "Education":
                     rd=request.getRequestDispatcher("education.jsp");
                    rd.forward(request,response);
                    break;
            
                case "Animals":
                     rd=request.getRequestDispatcher("animal.jsp");
                    rd.forward(request,response);
                    break;
            
                case "Business" :
                    rd=request.getRequestDispatcher("business.jsp");
                    rd.forward(request,response);
                    break;
                case "Others" :
                    rd=request.getRequestDispatcher("index.jsp");
                    rd.forward(request,response);
                    break;
                default:
                    out.print("Invalid Cause");
                    break;
            }
    }
}