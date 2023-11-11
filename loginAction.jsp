<%@page import="dbConnection.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if("admin@furnigo.com".equals(email)&&"Admin@123#".equals(password)){
	session.setAttribute("adminEmail",email);
	response.sendRedirect("admin-home");
	
}
else{
	int r=0;
	try{
		Connection con=ConnectionProvider.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from users where email='"+email+"'&& password='"+password+"'");
		while(rs.next()){
			r=1;
			session.setAttribute("currentUser", email);
			response.sendRedirect("userHome.jsp");
		}
		if(r==0){
			response.sendRedirect("login.jsp?msg=notexist");
		}
		
		
	}catch(Exception e){
		out.print(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
}




%>