<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <%
        try 
        {
            int fno = Integer.parseInt(request.getParameter("t1"));
            if(fno!=0)
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ARS","root","Rakesh@123");
                String s = "select * from flightmaster where flightnumber ='"+fno+"'";
                PreparedStatement pst =conn.prepareStatement(s);
                ResultSet rs = pst.executeQuery();
                while(rs.next())
                {%>
                <form action="Edit_Flight2.jsp">
                Flight No.&nbsp;&nbsp;&nbsp;<input  type="number" name="t1" value="<%out.println(rs.getInt(1));%>"><br>
                Flight Name:&nbsp;<input  type="text" name="t2" value="<%out.println(rs.getString(2));%>"><br>
                Source:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" name="t3" value="<%out.println(rs.getString(3));%>"><br>
                Destination:&nbsp;<input  type="text" name="t4" value="<%out.println(rs.getString(4));%>"><br>
                Departure Time:&nbsp;<input  type="text" name="t5" value="<%out.println(rs.getString(5));%>"><br>
                Arrival Time:<input  type="text" name="t6" value="<%out.println(rs.getString(6));%>"><br>
                Total Time:&nbsp;&nbsp;<input  type="text" name="t7" value="<%out.println(rs.getString(7));%>"><br>
                Fare:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="number" name="t8" value="<%out.println(rs.getInt(8));%>"><br>
                <input  type="submit" name="submit">
                </form>
               <%  
                }
            }
        } 
        catch(Exception e) 
        {
            //out.println(e);
        }
    %>
    </body>
</html>