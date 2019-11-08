
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        In cost
        <%
            int min_cost=100;
            int cost=0;
            String s= session.getAttribute("destination").toString();
            String Driver="";
            int phone=0;
           // int p=(int)session.getAttribute("passanger");
            
            if(s.equals("sion") || s.equals("Sion") ||s.equals("SION"))    
            {
                      Driver="Sagar";
                phone=88888888;
          
            cost=min_cost+60;
            if(session.getAttribute("radio").toString().equals("return")){
                 
                cost=min_cost+60*2-(min_cost/20);
            }
           // out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
            }
            

            if(s.equals("cst") || s.equals("Cst") ||s.equals("CST"))    
            {
                
                Driver="Suhas";
                phone=11111111;
            cost=min_cost+150;
            if(session.getAttribute("radio").toString().equals("return")){
                
                cost=min_cost+150*2-(min_cost/20);
            }
            //out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
            }
            
            
            if(s.equals("Mira road") || s.equals("mira road") ||s.equals("Mira Road"))    
            {
                Driver="Sagar";
                phone=88888888;
            cost=min_cost+130;
            if(session.getAttribute("radio").toString().equals("return")){
                
                cost=min_cost+130*2-(min_cost/20);
            }   
           // out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
            }
            
            
            if(s.equals("churchgate") || s.equals("Churchgate") ||s.equals("CHURCHGATE"))    
            {
            cost=min_cost+150;
            
                Driver="Ganesh";
                phone=11111111;
            if(session.getAttribute("radio").toString().equals("return")){
                
                cost=min_cost+150*2-(min_cost/20);
            }
            //out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
            }

            if(s.equals("andheri") || s.equals("Andheri") ||s.equals("ANDHERI"))    
                        {
                            
                Driver="Saklain";
                phone=333333333;
                        cost=min_cost+80;
                        if(session.getAttribute("radio").toString().equals("return")){

                            cost=min_cost+80*2-(min_cost/20);
                        }
              //          out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
                        }
            
            
           if(s.equals("bandra") || s.equals("Bandra") ||s.equals("BANDRA"))    
            {
                
                Driver="Amol";
                phone=666666666;
                   cost=min_cost+50;
                if(session.getAttribute("radio").toString().equals("return")){

                    cost=min_cost+50*2-(min_cost/20);
                }
                //out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
                }



           if(s.equals("vashi") || s.equals("Vashi") ||s.equals("VASHI"))    
            {
                
                Driver="Akshay";
                phone=222222222;
                   cost=min_cost+90;
                if(session.getAttribute("radio").toString().equals("return")){

                    cost=min_cost+90*2-(min_cost/20);
                }
                //out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
                }

           if(s.equals("dadar") || s.equals("Dadar") ||s.equals("DADAR"))    
            {
               
                Driver="Aniket";
                phone=44444444;
                   cost=min_cost+50;
                if(session.getAttribute("radio").toString().equals("return")){

                    cost=min_cost+50*2-(min_cost/20);
                }
                //out.print("cost for your booking to "+s.toUpperCase()+" is " +cost);
                }

                session.setAttribute("cost", cost);
                session.setAttribute("driver",Driver);
                session.setAttribute("phone", phone);
                RequestDispatcher rd=request.getRequestDispatcher("/id_gen");
                rd.forward(request, response);

 
        %>
        
    </body>
</html>
