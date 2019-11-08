

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body><form action="verify" >

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
     <li class="nav-item">
        <a class="nav-link" href="find_route.jsp">find route</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cancel_order.jsp">cancel order</a>
      </li>
      <li class="nav-item active    ">
        <a class="nav-link" href="check_fare"> Check fare<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="faq_page.jsp">HOW does this work?</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="faq_page.jsp">FAQ</a>
      </li>
    </ul>
  </div>
</nav><br><br><br>
<div class="form-signin">
        <center>
        <h1 class="h3 mb-3 font-weight-normal">CHECK FARE</h1>
         <div class="starter-template"> 
  <label class="btn btn-secondary">
    <input type="radio" name="r1" value="one-way"> One-way
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="r1" value="return" > Return
  </label><br><br>

  <select class="form-control" name="source" >
            <option value="option" name="source"> <h4>----select your pick-up location-----<h4></option>
            <option value="Chatrapati Shivaji Maharaj Airport">Chatrapati Shivaji Maharaj Airport</option>
            <option value="Chatrapati Shivaji Maharaj international Airport"> Chatrapati Shivaji Maharaj international Airport</option>
            <br>
        </select>
            
            <br>

        <select  class="form-control" name="destination1" >
            <option value="show"> ------select Destination-----
        <%   try{ String url="jdbc:mysql://localhost:3306/online_reser?autoReconnect=true&useSSL=false",dname="akshay";
            String dpass="1234";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, dname, dpass);  
            Statement s=con.createStatement();
            ResultSet rs=s.executeQuery("select * from destination");
            while(rs.next()){
            %>
            <option value="<%= rs.getString("location" ) %>"><%= rs.getString("location") %> </option>
          <%}

                }catch (Exception e){out.print("error"+e);}
            %></select>
            <input type="hidden"><br><br><input class="btn btn-secondary" type="submit" value="submit" name="ok"><br>
         </center></div>

</center>
      
</form></div>
    </body>
</html>

