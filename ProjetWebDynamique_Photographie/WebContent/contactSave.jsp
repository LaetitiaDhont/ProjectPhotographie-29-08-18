<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
try {
        String name= request.getParameter("nom");
        String email= request.getParameter("email");
        String phone= request.getParameter("phone");
        String message= request.getParameter("message");
        
        Class.forName("com.mysql.jdbc.Driver");
        
        String url = "jdbc:mysql://localhost/photographie";
        String user = "root";
        String pwd= "Artichaut07";
        
        Connection con=DriverManager.getConnection(url, user, pwd);
        
        PreparedStatement ps=con.prepareStatement("insert into photographie.contact values(?,?,?,?)");
        ps.setString(1,name);
        ps.setString(2,email);
        ps.setString(3,phone);
        ps.setString(4,message);
        
        int s= ps.executeUpdate();
        if(s>0){
        %>
        <jsp:forward page="contact.jsp"></jsp:forward>
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