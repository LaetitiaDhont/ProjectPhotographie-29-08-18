<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
 <%
 try {
            String n = request.getParameter("type_evenement");
            String p = request.getParameter("duree_evenement");
            String e = request.getParameter("budget");
            String f = request.getParameter("date_evenement");
            String g = request.getParameter("lieu_evenement");
            String h = request.getParameter("statut_client");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String url = "jdbc:mysql://localhost/photographie";
            String user = "root";
            String pwd= "Artichaut07";
            
            Connection con=DriverManager.getConnection(url, user, pwd);
            PreparedStatement ps = con.prepareStatement("insert into photographie.devis values(?,?,?,?,?,?)");                
            ps.setString(1, n);
            ps.setString(2, p);
            ps.setString(3, e);
            ps.setString(4,f);
            ps.setString(5,g);
            ps.setString(6,h);
            
            
                    
            int i = ps.executeUpdate();
                    
                    
            if(i>0){
            %>
                <jsp:forward page="devis.jsp"></jsp:forward>
            <% 
            }
            else{
                out.print("sorry!please fill correct detail and try again" );
            }
                
 }
 catch(Exception e){e.printStackTrace();
 out.print("sorry!please fill correct detail and try again" );
 }
 %>
