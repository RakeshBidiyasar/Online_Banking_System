<%@page import="java.sql.*" %>
<%
   try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking", "root", "Rakesh@123");
        String n = request.getParameter("t1");
        String p = request.getParameter("t2");
        String c = request.getParameter("t3");
        String a = request.getParameter("t4");
        int m = Integer.parseInt(request.getParameter("t5"));
        int b = Integer.parseInt(request.getParameter("t6"));
        String ac = request.getParameter("t7");
        String s="insert into userdata (name, password,city,address,mob,balance,ac_type) values('"+n+"','"+p+"','"+c+"','"+a+"','"+m+"','"+b+"','"+ac+"')";
        PreparedStatement pst=con.prepareStatement(s); 
        int i = pst.executeUpdate();
        if(i>0)
        {
            response.sendRedirect("User_Account.jsp");
        }
        else
        {
            response.sendRedirect("Reg.jsp");
        }
    }
   
    catch (Exception e)
    {
        System.out.println(e);
    }
 %>