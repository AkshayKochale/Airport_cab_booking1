
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/check2")
public class check2  extends HttpServlet{
    
    
    public void doPost (HttpServletRequest req, HttpServletResponse res) throws IOException,NullPointerException, ServletException
            {
        try {
            String n=req.getParameter("uname");
            String p=req.getParameter("pass");
            HttpSession session =req.getSession();
            session.setAttribute("uname", n);
            session.setAttribute("pass", p);
//            PrintWriter out=res.getWriter();
//            out.print("name :" +n+" pass :"+p);
//            
            if(Database.validate(n, p)){
            RequestDispatcher rd= req.getRequestDispatcher("Home.jsp");
                rd.forward(req, res);
            }else{
                RequestDispatcher rd= req.getRequestDispatcher("Login.jsp");
                rd.forward(req, res);}
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(check2.class.getName()).log(Level.SEVERE, null, ex);
        }

                
            }}
