<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
    <title>Bank</title>
</head>
<body class="bg-primary mb-3">
    <nav class="navbar navbar-expand-sm navbar-dark bg-primary mb-3">
        <div class="container">
            <%
                Integer Ac = (Integer)session.getAttribute("z");
                if(Ac == 1001)
                {
                    out.println("Welcome Admin Rakesh");
                }
                else 
                {
                    out.println("Welcome Admin Kashav Sharma");
                }
            %>
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
            <form class="form-inline ml-auto">
            <input class="form-control mr-2" type="text" placeholder="Search" />
            <button class="btn btn-success" type="button">Search</button>
            </form>
            </div>
        </div>
    </nav>
     <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="1.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</body>
</html>