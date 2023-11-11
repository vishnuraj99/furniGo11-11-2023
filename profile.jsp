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
			<a class="navbar-brand" href="userHome.jsp">furniGo<span>.com</span></a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
				aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-0 me-0">
					<li><a class="nav-link" href="cart.jsp"><img src="images/icons8-heart-32.png"></a></li>
				</ul>
			</div>
		</div>

	</nav>
	<div class="container light-style flex-grow-1 container-p-y">
		<h4 class="font-weight-bold py-3 mb-4">
			Account settings
		</h4>
		<div class="card overflow-hidden">
			<div class="row no-gutters row-bordered row-border-light">
				<div class="col-md-3 pt-0 pe-5">
					<div class="list-group list-group-flush account-settings-links ps-4">
						<a class="list-group-item list-group-item-action active" data-toggle="list"
							href="#account-general">General</a>
						<a class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-change-password">Change password</a>
						<a class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-info">Info</a>
						<a class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-social-links">Social links</a>


						<a class="list-group-item list-group-item-action" data-toggle="list"
							href="#account-logout">Logout</a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content">
						<div class="tab-pane fade active show" id="account-general">
							<form action="success_checker.html" method="post">
								<!--				<div class="card-body media align-items-center">
									<div
										style=background-size:cover; height:480px; padding-top:80px;">
										<img src="" alt="profile pic" class="d-block ui-w-80">
									</div>

									<div class="media-body ml-4">
										<label class="btn btn-outline-primary">
											Upload new photo
											<input type="file" class="account-settings-fileinput">
										</label> &nbsp;
										<button type="button" class="btn btn-default md-btn-flat">Reset</button>
										<div class="text-light small mt-1">Allowed JPG, GIF or PNG. Max size of 800K
										</div>
									</div>
								</div>-->
								<hr class="border-light m-0">
								<div class="card-body">
									
									<div class="form-group">
										<label class="form-label">Name</label>
										<input type="text" class="form-control" value="Nelle Maxwell">
									</div>
									<div class="form-group">
										<label class="form-label">E-mail</label>
										<input type="text" class="form-control mb-1" value="nmaxwell@mail.com">

									</div>
									<div class="form-group">
										<label class="form-label">Address</label>
										<textarea class="form-control" rows="4" cols="50"></textarea>
									</div>
									<div class="text-right mt-3">
										<button type="button" class="btn btn-primary">Save changes</button>&nbsp;
										<button type="button" class="btn btn-default">Cancel</button>
									</div>
							</form>
						</div>
					</div>
					<div class="tab-pane fade" id="account-change-password">
						<div class="card-body pb-2">
							<form method="" action="">
								<div class="form-group">
									<label class="form-label">Current password</label>
									<input type="password" class="form-control">
								</div>
								<div class="form-group">
									<label class="form-label">New password</label>
									<input type="password" class="form-control">
								</div>
								<div class="form-group">
									<label class="form-label">Repeat new password</label>
									<input type="password" class="form-control">
								</div>
								<div class="text-right mt-3">
									<button type="button" class="btn btn-primary">Save changes</button>&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>


							</form>
						</div>
					</div>
					<div class="tab-pane fade" id="account-info">
						<form action="" method="">
							<div class="card-body pb-2">
								<div class="form-group">
									<label class="form-label">Date of Birth</label>
									<input type="date" class="form-control">
								</div>
								<div class="form-group">
									<label class="form-label">Country</label>
									<select class="custom-select">
										<option>USA</option>
										<option selected>INDIA</option>
										<option>UK</option>
										<option>Germany</option>
										<option>France</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">State</label>
									<select class="custom-select">
										<option>Karnataka</option>
										<option selected>Tamil Nadu</option>
										<option>Kerala</option>
										<option>Delhi</option>
									</select>
								</div>
								<div class="form-group">
									<label class="form-label">City</label>
									<input type="text" class="form-control">
								</div>
							</div>
							<hr class="border-light m-0">
							<div class="card-body pb-2">
								<h6 class="mb-4">Contacts</h6>
								<div class="form-group">
									<label class="form-label">Phone</label>
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="text-right mt-3">
								<button type="button" class="btn btn-primary">Save changes</button>&nbsp;
								<button type="button" class="btn btn-default">Cancel</button>
							</div>
						</form>
					</div>
					<!--social links starting-->
					<div class="tab-pane fade" id="account-social-links">

						<div class="card-body pb-2">
							<form action="" method="">
								<div class="form-group">
									<label class="form-label">Twitter</label>
									<input type="text" class="form-control" value="https://twitter.com/user">
								</div>
								<div class="form-group">
									<label class="form-label">Facebook</label>
									<input type="text" class="form-control" value="https://www.facebook.com/user">
								</div>
								<div class="form-group">
									<label class="form-label">Google+</label>
									<input type="text" class="form-control" value>
								</div>
								<div class="form-group">
									<label class="form-label">LinkedIn</label>
									<input type="text" class="form-control" value>
								</div>
								<div class="form-group">
									<label class="form-label">Instagram</label>
									<input type="text" class="form-control" value="https://www.instagram.com/user">
								</div>
								<div class="text-right mt-3">
									<button type="button" class="btn btn-primary">Save changes</button>&nbsp;
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</form>
						</div>
					</div>

					<!--starting notification-->

					<!--ending notification-->
					<div class="tab-pane fade" id="account-logout">
						<div class="card-body pb-2">
							<form action="logoutAction.jsp" method="post">

								<div class="form-group" style="align-items: center;">
									<label class="form-label" style="text-align: center;">Are you sure want to logout ?
									</label>
								</div>
								<div class="text-right mt-3">
									<button type="submit"
										class="btn btn-primary media allign-items-center">Logout</button>&nbsp;
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