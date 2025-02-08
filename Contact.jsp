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
        top: 50%;
        margin-left: 19%;
        padding-left: 5%;
        padding-right: 5%;
        left: 30%;
        transform: translate(-50%, -50%);
    }
    </style>
    <title>Contact Us</title>
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
          <h2 class='m-5'> Contact Us </h2>
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Telegram_logo.svg/2048px-Telegram_logo.svg.png" 
         alt="Happy Family" style="float:left; width:50x; height:50px;">
    <img src="https://1000logos.net/wp-content/uploads/2021/05/Gmail-logo.png" 
         alt="Happy Family" style="margin-left: 90px; width:50x; height:50px;">
    <img src="https://img.freepik.com/free-vector/instagram-icon_1057-2227.jpg?w=2000" 
         alt="Happy Family" style="float:right; width:50x; height:50px;">
<div class='container pb-5'>
    <form action="Contact.jsp" method="post"> 
      <div class='form-group'> <br>
        <label for='exampleInputEmail1'>Name</label> 
        <input type='text' name="t1" class='form-control' id='exampleInputEmail1' aria-describedby='emailHelp'> 
        <small id='emailHelp' class='form-text text-muted'>We'll never share your account number with anyone else.</small> 
    </div>
    <div class='form-group'> 
      <label for='exampleInputPassword1'>Email</label> 
      <input type='email' name="t2" class='form-control' id='exampleInputPassword1'> 
    </div>
    <div class='form-group'> 
      <label for='exampleInputPassword1'>Contact Details</label> 
      <input type='number' name="t3" class='form-control' id='exampleInputPassword1'> 
    </div>
    <div class='form-group form-check'> 
        <input type='checkbox' class='form-check-input' id='exampleCheck1' required> 
      <label class='form-check-label' for='exampleCheck1'>Check if you are Confirmed</label> 
    </div>
    <button type='submit' class='btn btn-primary'>Submit</button>
  </form>
    <%
        String str = (String)request.getAttribute("k");
        if(str!=null)
        {
            out.println(str);
        }
    %>
    <br>
    <%
   try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking", "root", "Rakesh@123");
        String n = request.getParameter("t1");
        String p = request.getParameter("t2");
        int m = Integer.parseInt(request.getParameter("t3"));
        String s="insert into contact_us  values('"+n+"','"+p+"','"+m+"')";
        PreparedStatement pst=con.prepareStatement(s); 
        int i = pst.executeUpdate();
        if(i>0)
        {
            out.println("Thank you for contact us");
        }
        else
        {
            response.sendRedirect("Main.jsp");
        }
    }
    catch (Exception e)
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