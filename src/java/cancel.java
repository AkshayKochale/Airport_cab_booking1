
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

@WebServlet("/cancel")
public class cancel extends HttpServlet {

    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
  
        try {
            PrintWriter out= res.getWriter();
            String id= req.getParameter("cancel_id");
                
            Database.cancel(Integer.parseInt(id));
            out.print("Booking for this  id:"+id +" is cancel");
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(cancel.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    }}
