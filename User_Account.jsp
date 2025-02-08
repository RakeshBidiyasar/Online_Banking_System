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
    </style>
    <title>User Login</title>
</head>
<body class="bg-primary mb-3">
    <nav class="navbar navbar-expand-sm navbar-dark bg-primary mb-3">
        <div class="container">
            <a class="navbar-brand" href="Main.jsp">Axis Bank</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Main.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="About.jsp">About</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="Contact.jsp">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="User_Account.jsp">User_Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin_Account.jsp">Admin_Account</a>
                </li>
            </ul>
            <form class="form-inline ml-auto">
            <input class="form-control mr-2" type="text" placeholder="Search" />
            <button class="btn btn-success" type="button">Search</button>
            </form>
            </div>
        </div>
    </nav>
    <div class="carousel-inner">
    <div class="carousel-item active" class="container">
      <img src="1.jpg" class="d-block w-100" alt="...">
      <div class="centered">
          <h2 class='m-5'> User Login </h2>
<div class='container pb-5'>
    <form action="User_Account.jsp" method="post"> 
    <div class='form-group'> 
      <label for='exampleInputEmail1'>User Account</label> 
      <input type='text' name="t1" class='form-control' id='exampleInputEmail1' aria-describedby='emailHelp'> 
      <small id='emailHelp' class='form-text text-muted'>We'll never share your account number with anyone else.</small> 
    </div>
    <div class='form-group'> 
      <label for='exampleInputPassword1'>Password</label> 
      <input type='password' name="t2" class='form-control' id='exampleInputPassword1'> 
    </div>
    <div class='form-group form-check'> 
        <input type='checkbox' class='form-check-input' id='exampleCheck1' required> 
      <label class='form-check-label' for='exampleCheck1'>Check if you are Confirmed</label> 
    </div>
    <button type='submit' class='btn btn-primary'>Submit</button>
  </form> <%
                    String str = (String)request.getAttribute("k");
                    if(str!=null)
                    {
                        out.println(str);
                    }
                    %><br>
    <%
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","Rakesh@123");   
            int ac=Integer.parseInt(request.getParameter("t1"));
            String pwd=request.getParameter("t2");
            String q="select * from userdata where User_Account='"+ac+"' and password= '"+pwd+"'";
            PreparedStatement pst= con.prepareStatement(q);
            ResultSet rs=pst.executeQuery();
            if(rs.next())
            {
                String Naam = rs.getString(2);
                session.setAttribute("x", Naam);
                Integer Acc = rs.getInt(1);
                session.setAttribute("z", Acc);
                response.sendRedirect("User.jsp");
            }
            else
            {   
                request.setAttribute("k","Incorrect Password, Enter Valid Username And Password");
                RequestDispatcher rid = getServletContext().getRequestDispatcher("/User_Account.jsp");
                rid.forward(request, response);
                //response.sendRedirect("User_Account.jsp");
            }
        } 
        catch(Exception e) 
        {
           // out.println(e);
        }
    %>
</div>
      </div>
    </div>
  </div>
</body>
</html>