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
                <h1>Registration Page</h1>
                <form action="Registration.jsp" method="post"><br>
                <label>Enter Your Name:-</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="t1" required>
                <br><br>
                <label>Enter Your Password:-</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="password" name="t2" required>
                <br><br>
                <label>Enter Your City:-</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="t3" required>
                <br><br>
                <label>Enter Your Address:-</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="t4" required>
                <br><br>
                <label>Enter Your Mobile No.:-</label>&nbsp;&nbsp;&nbsp;
                <input type="number" name="t5" required>
                <br><br>
                <label>Enter Your Balance:-</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="number" name="t6" required>
                <br><br>
                <label>Enter Your Account Type:-</label>
                <input type="text" name="t7" required>
                <br><br>
                <input type="Submit" class="aej" required><br><br>
                </form>
            </div>
    </div>
  </div>
    </center>
</body>
</html>

