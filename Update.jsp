<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <style>
        .centered 
    {
        background-color: lightblue;
        position: absolute;
        top: 40%;
        margin-left: 20%;
        padding-left: 5%;
        padding-right: 5%;
        left: 30%;
        transform: translate(-50%, -50%);
    }
            .aej
            {
                padding: 6px;
            }
    </style>
    <title>Bank</title>
</head>
<body class="bg-primary mb-3" style="background-color: blue; ">
    <nav class="navbar navbar-expand-sm navbar-dark bg-primary mb-3">
        <div class="container">
            <a class="navbar-brand" href="Main.jsp">Admin Page</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Update.jsp">Update Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Reg.jsp">Create Account</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="Delete.jsp">Delete Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Main.jsp">Log Out</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>
<center>
     <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="1.jpg" class="d-block w-100" alt="...">
      <div class="centered" style="text-align: justify">
                <h1 style="text-align: center" >Update Record</h1>
                <form action="Update.jsp" method="Post"><br>
                    Account Number : <input type="number" name="t8" required><br><br>
                    <small>Please Enter Your Information that you want to Update</small><br><br>
                    Enter Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t1"><br><br>
                    Enter Password :&nbsp;&nbsp;&nbsp; <input type="text" name="t2"><br><br>
                    Enter City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t3"><br><br>
                    Enter Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t4"><br><br>
                    Mobile Num. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="number" name="t5"><br><br>
                    Account Type: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t7"><br><br>
                    <input type="submit" value="Submit"><br><br>
                </form>
                <%
        try 
        {
            int acc = Integer.parseInt(request.getParameter("t8"));
            String n = request.getParameter("t1");
            String p = request.getParameter("t2");
            String c = request.getParameter("t3");
            String ad = request.getParameter("t4");
            long mo = Long.parseLong(request.getParameter("t5"));
            String act = request.getParameter("t7");
            if(n!=null || p!=null || c!=null || ad!=null|| mo!=0|| act!=null || acc!=0)
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","Rakesh@123");
                String s = "update userdata set name='"+n+"',password='"+p+"',city='"+c+"',address='"+ad+"',mob='"+mo+"',ac_type='"+act+"' where User_Account ='"+acc+"'";
                PreparedStatement pst =con.prepareStatement(s);
                int j = pst.executeUpdate();
                if(j>0)
                {
                    response.sendRedirect("Main.jsp");
                }
            }
        } 
        catch(Exception e) 
        {
           //out.println(e);
        }
    %>
            </div>
    </div>
  </div>
    </center>
</body>
</html>