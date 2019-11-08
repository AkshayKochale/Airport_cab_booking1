
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet1")
public class Servlet1 extends HttpServlet {
    
   public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
   
       PrintWriter out= res.getWriter();
      
       try{String url="jdbc:mysql://localhost:3306/online_reser?autoReconnect=true&useSSL=false",name="akshay";
    String pass="1234"; String q="insert into user_info values(?,?,?,?,?,?);";
         Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection(url, name, pass);
    PreparedStatement pt=con.prepareStatement(q);
     pt.setString(1,req.getParameter("fname"));
     pt.setString(2,req.getParameter("lname"));
     pt.setString(3,req.getParameter("gmail"));
     pt.setString(4,req.getParameter("phone"));
     pt.setString(5,req.getParameter("uname"));
     pt.setString(6,req.getParameter("pass"));
     
    
           int i = pt.executeUpdate();
          RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
          rd.include(req, res);
          
       } catch (SQLException ex) {
           out.print(ex.getMessage());
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(Servlet1.class.getName()).log(Level.SEVERE, null, ex);
       }
    
    
    
    
       
   }
    
}
