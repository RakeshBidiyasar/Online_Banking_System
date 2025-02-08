<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <title>Credit Page</title>
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
            <%
                String name = (String)session.getAttribute("x");
                Integer Ac = (Integer)session.getAttribute("z");
                out.println("Welcome User. " + name);
            %>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Check_Balance.jsp">Check Balance</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Debit_Amount.jsp">Debit Amount</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="Credit_Amount.jsp">Credit Amount</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="Mini.jsp">Mini Statement</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Main.jsp">Log Out</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>
    <div class="carousel-inner">
    <div class="carousel-item active" class="container">
      <img src="1.jpg" class="d-block w-100" alt="...">
      <div class="centered">
          <h2 class='m-5'> Credit Account </h2>
<div class='container pb-5'>
                <form action="Credit_Amount.jsp" method="Post">
                    Account No. : <input type="number" name="t1"><br><br>
                    Amount : <input type="number" name="t2"><br><br>
                    <input type="submit" value="Submit">
                </form>
           
    <%
        try 
        {
            int i = Integer.parseInt(request.getParameter("t1"));
            int k = Integer.parseInt(request.getParameter("t2"));
            if(i!=0 && k!=0)
            if(Ac==i)
            {
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","Rakesh@123");
                String s = "update userdata set balance = balance + '"+k+"' where User_Account='"+i+"'";
                PreparedStatement pst =con.prepareStatement(s);
                int j = pst.executeUpdate();
                if(j>0)
                {
                        String sa="insert into mini(user_account, credit_amount, debit_amount) values('"+i+"','"+k+"',0)";
                        PreparedStatement psta=con.prepareStatement(sa); 
                        int m = psta.executeUpdate();
                        if(m>0)
                        {
                            response.sendRedirect("User.jsp");
                        }
                        else
                        {
                            response.sendRedirect("Credit_Amount.jsp");
                        }
                }
            }
            }
            else
            {
                out.println("Wrong Account Number");
            }
        } 
        catch (Exception e) 
        {
            //out.println(e);
        }
    %>
</div>
      </div>
    </div>
  </div>
</body>
</html>