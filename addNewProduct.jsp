<%@page import="dbConnection.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>CodingDung | Profile Template</title>
	<link rel="stylesheet" href="profilestyle.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap4" />

	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
	<link href="css/tiny-slider.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<title>furniGo:cart </title>
</head>
</head>

<body>

	<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

		<div class="container">
			<a class="navbar-brand" href="adminHome.jsp">furniGo<span>.com</span></a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
				aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-0 me-0">
				</ul>
			</div>
		</div>

	</nav>
	<div class="container light-style flex-grow-1 container-p-y">
		<h4 class="font-weight-bold py-3 mb-4">
			ADD A NEW ONE !
		</h4>
		<div class="card overflow-hidden">
			<div class="row no-gutters row-bordered row-border-light">
				<div class="col-md-3 pt-0 pe-5">
					<div class="list-group list-group-flush account-settings-links ps-4">
						<a class="list-group-item list-group-item-action active" data-toggle="list"
							href="#account-general">ADD PRODUCTS</a>
						
					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content">
						<div class="tab-pane fade active show" id="account-general">
						<%int id=1;
						try{
						Connection con=ConnectionProvider.getConnection();
						PreparedStatement stmt=con.prepareStatement("select max(id) from products");
						ResultSet rs=stmt.executeQuery();
						while(rs.next()){
							id=rs.getInt(1);
							id=id+1;
						}
						}catch(Exception e){
							out.print(e);							
						}						
						%>
								
							<form action="addProductsToDatabase" method="post" enctype="multipart/form-data">
								
								<hr class="border-light m-0">
								<div class="card-body">
								
								
									<div class="form-group">
										<%
										String msg=request.getParameter("msg");
										if("done"==msg){%>
											<h3 class="alert">Item <%out.println(id-1);%>was added successfully</h3>
										<% }%>
										<% 
										if("wrong"==msg){%>
											<h3 class="alert">Item <%out.println(id);%>was not added</h3>
										<% }%>
										<% 
										if("sqlException"==msg){%>
											<h3 class="alert">error in adding blob to table, check code</h3>
										<% }%>
								
										
									</div>
								
									<div class="form-group">
										<label class="form-label">Item ID :<%out.println(id);%></label>
										<input type="hidden" name="itemId" value="<%out.println(id);%>">
										
									</div>
									<div class="form-group">
										<label class="form-label">Photo</label>
										<input type="file" class="form-control" name="itemPhoto">
									</div>
									
									<div class="form-group">
										<label class="form-label">Name</label>
										<input type="text" class="form-control" name="itemName">
									</div>
									<div class="form-group">
									<label class="form-label">Category</label>
									<select class="custom-select" name="itemCategory">
										<option>CHAIR</option>
										<option selected>SOFA</option>
										<option>TABLE</option>
										<option>COUCH</option>
									
									</select>
								</div>
									<div class="form-group">
										<label class="form-label">PRICE</label>
										<input type="text" class="form-control mb-1" name="itemPrice">

									</div>
									<div class="form-group">
										<label class="form-label">QUANTITY</label>
										<input type="text" class="form-control mb-1" name="itemQuantity">

									</div>
									<div class="form-group">
									<label class="form-label">STATUS</label>
									<select class="custom-select" name="itemStatus">
										<option selected>IN STOCK</option>
										<option>OUT OF STOCK</option>
										<option>FEW ITEMS LEFT</option>																			
									</select>
								</div>
								
									<div class="text-right mt-3">
										<button type="submit" class="btn btn-primary">Save changes</button>&nbsp;
										<button type="reset" class="btn btn-default">Cancel</button>
<!-- 										    <a href="adminHome.jsp" id="cancel" name="cancel" class="btn btn-default">Cancel</a>
 -->										
									</div>
									</div>
							</form>
						</div>
					</div>								
				</div>
			</div>
		</div>
	</div>

	</div>
	<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">

	</script>
</body>

</html>