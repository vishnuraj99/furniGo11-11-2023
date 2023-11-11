<%@page import="java.io.OutputStream"%>
<%@page import="dbConnection.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

Blob blob=null;
byte [] b=null;
String id=request.getParameter("idimg");

try{
	 Connection con=ConnectionProvider.getConnection();
	 Statement stmt=con.createStatement();
	 ResultSet rs= stmt.executeQuery("select * from products where id='"+id+"'");
	 while(rs.next()){
		 blob=rs.getBlob(2);
		 b=blob.getBytes(1,(int)blob.length());
		 // response.setContentType("image/gif");
		// ServletOutputStream o=response.getOutputStream();
		 OutputStream o = response.getOutputStream();
		 o.write(b);
		 o.flush();
		 o.close();
	 }
	
	
}catch(Exception e){
	out.println(e);
}




%>