
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/search")
public class search extends HttpServlet {
  protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
         
      String source=req.getParameter("source");
      
      String destination=req.getParameter("destination");
      String radio=req.getParameter("r1");
      String nop=req.getParameter("passanger");
      HttpSession session =req.getSession();
      session.setAttribute("radio", radio);
      session.setAttribute("source",source);
      session.setAttribute("destination", destination);
      session.setAttribute("passanger", nop);
      PrintWriter out=res.getWriter();
    // out.print(source+" "+ destination+"  " +radio+ " "+passanger);
     res.sendRedirect("cost.jsp");
//              if(Database.validate1(destination)){
//                           res.sendRedirect("cost.jsp");
//          }  else{
//          
//          out.println("Sorry!! we do not provide service to "+destination.toUpperCase()+" location");
//          out.println("Enter another location");
//          }
      
      
  }
}
