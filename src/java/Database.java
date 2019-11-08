
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;



public class Database {

   
    
public  static boolean validate(String name,String pass) throws SQLException,ClassNotFoundException{
        boolean status=false;         
            String url="jdbc:mysql://localhost:3306/online_reser?autoReconnect=true&useSSL=false";
            String dname="akshay";
            String dpass="1234";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, dname, dpass);    
            PreparedStatement ps=con.prepareStatement("select * from user_info where uname=? and pass=?");
            ps.setString(1,name);
            ps.setString(2,pass);
            ResultSet rs= ps.executeQuery();
            status=rs.next();
        return status;
         }
 

   
    public static boolean validate1(String c)throws SQLException,ClassNotFoundException{
    
               
            boolean status1=true;
            String url="jdbc:mysql://localhost:3306/online_reser?autoReconnect=true&useSSL=false",dname="akshay";
            String dpass="1234";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, dname, dpass);    
           PreparedStatement ps=con.prepareStatement("select * from destination where location=?");
            ps.setString(1, c);
            ResultSet rs= ps.executeQuery();
            
            status1=rs.next();
            
        return status1;
            
                
        }
    
    
public  static int id_allocation(String name, String destination) throws SQLException,ClassNotFoundException{
        int id=0;         
            String url="jdbc:mysql://localhost:3306/online_reser?autoReconnect=true&useSSL=false";
            String dname="akshay";
            String dpass="1234";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, dname, dpass);    
            PreparedStatement ps=con.prepareStatement("select max(id) from id_gen");
          //  System.out.println("done");
            ResultSet rs= ps.executeQuery();
            if(rs.next())
            {
             id=rs.getInt(1);
            id++;
               // System.out.println(""+id);
            PreparedStatement ps1=con.prepareStatement("insert into id_gen values(?,?,?)");
            ps1.setInt(1,id);
            ps1.setString(2,name);
            ps1.setString(3,destination);
            int i=ps1.executeUpdate();
            
            }
        return id;
         }
        
 public  static void cancel(int i) throws SQLException,ClassNotFoundException{
                
            String url="jdbc:mysql://localhost:3306/online_reser?autoReconnect=true&useSSL=false",dname="akshay";
            String dpass="1234";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, dname, dpass);    
            PreparedStatement ps=con.prepareStatement("delete from id_gen where id=?");
          //  System.out.println("done");
          ps.setString(1,i+"");
      int id= ps.executeUpdate();
            System.out.println("sucessfully deleted");
 }
    
    }
    
    
    
