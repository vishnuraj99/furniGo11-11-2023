<%@page import="dbConnection.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("emailReg");
String password=request.getParameter("passwordReg");
String name="";
String address="";
String country="";
String state="";
String city="";
String phone="";
try{
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement stmt=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?)");
	stmt.setString(1,email);
	stmt.setString(2,password);
	stmt.setString(3,name);
	stmt.setString(4,address);
	stmt.setString(5,country);
	stmt.setString(6,state);
	stmt.setString(7,city);
	stmt.setString(8,phone);
	stmt.executeUpdate();
	response.sendRedirect("login.jsp?msg=valid");
}
catch(Exception e){
	out.print(e);
	response.sendRedirect("login.jsp?msg=invalid");
	
}
%>