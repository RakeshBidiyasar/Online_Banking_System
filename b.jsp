<%-- 
    Document   : b
    Created on : 10-Apr-2022, 00:07:23
    Author     : Manish
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
       <% try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ARS","root","Rakesh@123");
                int fno=Integer.parseInt(request.getParameter("t1"));
                String fname=request.getParameter("t2");
                String so=request.getParameter("t3");
                String de=request.getParameter("t4");
                String dpt=request.getParameter("t5");
                String at=request.getParameter("t6");
                String tt=request.getParameter("t7");
                int fa=Integer.parseInt(request.getParameter("t8"));
                
                  if(fno!=0 && fname!=null && so!=null && de!=null && dpt!=null && at!=null && tt!=null && fa!=0)
                  {
                  
                  String q="update flightmaster set flightname='"+fname+"', source='"+so+"', destination='"+de+"', departuretime='"+dpt+"', arrivaltime='"+at+"', totaltime='"+tt+"', fare='"+fa+"' where flightnumber='"+fno+"'";
                  PreparedStatement pst=conn.prepareStatement(q);
                  int j=pst.executeUpdate();
                  if(j>0)
                  {
                    out.println("Record Update");
                    response.sendRedirect("Admin.jsp");
                  }
                  else
                  {
                    out.println("Not Update");
                  }
                  }   
            
        } catch (Exception e) {
            out.println(e);
        }
    
    %>
    </body>
</html>