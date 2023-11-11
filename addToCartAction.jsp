<%@page import="java.sql.*"%>
<%@page import="dbConnection.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%String prodId=request.getParameter("prodId");
String prodName=null;
int price=0;
int quantity=1;
int total=price*quantity;
String customername=null;
String shippingAddress=null;
String payment=null;


try{
Connection con=ConnectionProvider.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from products where id='"+prodId+"'");
while(rs.next()){
prodName=rs.getString(3);
price=rs.getInt(5);
}
//inserting into cart table
PreparedStatement pstmt=con.prepareStatement("insert into cart values(?,?,?,?,?,?,?,?)");
 pstmt.setString(1,prodId);
 pstmt.setString(2, prodName);
 pstmt.setString(3,String.valueOf(price));
 pstmt.setString(4,String.valueOf(quantity));
 pstmt.setString(5,String.valueOf(total));
 pstmt.setString(6,customername);
 pstmt.setString(7,shippingAddress);
 pstmt.setString(8,payment);
 
 
}catch(Exception e){
	out.println(e);
}
%>

