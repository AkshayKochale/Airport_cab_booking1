<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
          <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
            
    </head>
    <body><%String i= session.getAttribute("cost").toString();
            String d= session.getAttribute("driver").toString();
            String p = session.getAttribute("phone").toString();
            String name=session.getAttribute("uname").toString();
            String destination=session.getAttribute("destination").toString();
            String CR="CR";
            String bid=session.getAttribute("id").toString() ;
    %>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="#">MENU</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          
            <a class="nav-link" href="index.html">HOME </a>
          </li>
           <li class="nav-item active ">
            <a class="nav-link" href="Home.jsp">Book now </a>
          </li>
         <li class="nav-item ">
            <a class="nav-link" href="find_route.jsp">find route</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cancel_order.jsp">cancel order</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="check_fare.jsp"> Check fare</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="how.jsp">HOW does this work?</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="faq_page.jsp">FAQ</a>
          </li>
      <li class="nav-item">
          <a class="nav-link" href="index.html" style="color:orangered;">Log out</a>
      </li>
        </ul>
      </div>
    </nav>
    
<main role="main" class="container">
  <div class="jumbotron">
    <h1>BOOKING ID : <% out.print(" CR"+bid);%></h1>
    <p class="lead">
        <% out.println("Driver name:"+d);%><br>
            <%out.println("             phone no:"+p);%><br>
      <% out.println("Destination :"+destination);
           %> 

    </p>
    <a class="btn btn-lg btn-primary" href="/docs/4.3/components/navbar/" role="button" onclick="http://Googlepay.com"> <%=i%>Rs. Proceed to pay</a>
     <a class="btn btn-lg btn-primary" href="/docs/4.3/components/navbar/" role="button" onclick="parent.location='index.jsp'  ">Pay later</a>
  </div>
</main>
    </body>
</html>
