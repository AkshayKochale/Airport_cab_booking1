

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="#">MENU</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          
            <a class="nav-link" href="index.html">HOME </a>
          </li>
           <li class="nav-item ">
            <a class="nav-link" href="Home.jsp">Book now </a>
          </li>
         <li class="nav-item active">
            <a class="nav-link" href="find_route.jsp">find route<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cancel_order.jsp">cancel order</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="check_fare.jsp"> Check fare</a>
          </li>
      <li class="nav-item">
          <a class="nav-link" href="index.html" style="color:orangered;">Log out</a>
      </li>
        </ul>
      </div>
    </nav>
        
        <div class="form-signin"><form action="cancel">
        <h4>Enter your destination</h4><br>
        <form class="form-inline my-2 my-lg-0">
     <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
     <br><button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="http://googlemaps.com">Search</button>
        </form>
        </form>
        
    </body>
</html>
