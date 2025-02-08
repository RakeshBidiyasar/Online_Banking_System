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
    <title>Delete Account</title>
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
                <h1 style="text-align: center" >Delete Record</h1>
                <form action="Delete.jsp" method="post"><br>
                    Enter Account Number : <input type="text" name="t1"><br><br>
                    Enter Your Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t1"><br><br>
                <input type="Submit" value="Submit"><br><br>   
            </form>
            </div>
    </div>
  </div>
    </center>
<%
        try 
        {
            int i = Integer.parseInt(request.getParameter("t1"));
            if(i!=0)
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","Rakesh@123");
                String q ="delete from userdata where User_Account="+i+"";
                PreparedStatement pst = con.prepareStatement(q);
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
</body>
</html>