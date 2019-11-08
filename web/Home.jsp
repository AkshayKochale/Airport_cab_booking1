<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title></title>
</head>

<body ><form action="search">
   
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="#">MENU</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      
        <a class="nav-link" href="index.html">HOME </a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="#">Book now <span class="sr-only">(current)</span></a>
      </li>
     <li class="nav-item">
        <a class="nav-link" href="find_route.jsp">find route</a>
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
</nav><div class="back"><br>
    <br><br><br>
<main role="main" class="container">
    
    <div class="starter-template"> 
      <h1>Welcome <m> <%= session.getAttribute("uname") %></m>  to city cab booking</h1>
    <p class="lead">Easy transfers to and from your accommodation<br>FREE CANCELLATION WITH MEET AND GREET FACILITY. </p>
      </div></div>
    <br><br><br><br>   <br><br><br><br>
    <div class="position3">
    <div class="form-check-label">    
  
  <label class="btn btn-outline-secondary">
    <input type="radio" name="r1" value="one-way"> One-way
  </label>
  <label class="btn btn-outline-secondary">
    <input type="radio" name="r1" value="return" > Return
  </label>

    <select class="form-control" name="source" >
            <option value="option" name="source"> <h4>----select your pick-up location-----<h4></option>
            <option value="Chatrapati Shivaji Maharaj Airport">Chatrapati Shivaji Maharaj Airport</option>
            <option value="Chatrapati Shivaji Maharaj international Airport"> Chatrapati Shivaji Maharaj international Airport</option>
        
        </select>
        
        <br><select  class="form-control" name="destination" >
            <option value="show"> ------select Destination-----
        <%   try{ String url="jdbc:mysql://localhost:3306/online_reser?autoReconnect=true&useSSL=false",dname="akshay";
            String dpass="1234";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, dname, dpass);  
            Statement s=con.createStatement();
            ResultSet rs=s.executeQuery("select * from destination");
            while(rs.next()){
            %>
            <option value="<%= rs.getString("location") %>"><%= rs.getString("location") %> </option>
          <%}

                }catch (Exception e){out.print("error"+e);}
            %>
        </select><br>
        

 <input  class="form-control" type="date" placeholder="click to show datepicker">
<br>

<input class="form-control" type="text"  placeholder="Enter no of passanger"  aria-describedby="basic-addon1" name="passanger"><br>

<button type="submit" class="btn btn-secondary" >Submit</button>
  </div>
    </div>

<br><br><br><br>  </form>
        
           
        
</body>

</html>