
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/id_gen")
public class id_gen extends HttpServlet {

    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
    
                
        try {
            HttpSession session=req.getSession();
            PrintWriter out=res.getWriter();
            String i= session.getAttribute("cost").toString();
            String d= session.getAttribute("driver").toString();
            String p = session.getAttribute("phone").toString();
            String name=session.getAttribute("uname").toString();
            String destination=session.getAttribute("destination").toString();
            String CR="CR";
            
//           out.print(i+" "+d+" "+p+" "+name+" "+destination);
//           out.print("===================");
             int id= Database.id_allocation(name,destination);
             session.setAttribute("id",id);
          res.sendRedirect("result.jsp");
             
//          out.print(CR+id);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(id_gen.class.getName()).log(Level.SEVERE, null, ex);
        }
 
    
    }
    }



