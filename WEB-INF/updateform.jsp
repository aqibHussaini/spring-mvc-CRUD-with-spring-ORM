<%@ page import="com.Entities.Mylink"  %>
<%
Mylink obj=(Mylink)request.getAttribute("obj");
%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto mb-2 ">
					<li class="nav-item"><a class="nav-link " aria-current="page"
						href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="form">Form</a>
					</li>

				</ul>

			</div>
		</div>
	</nav>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3 ">
				<form action="updatehandler" method="post">
					<div class="form-group">
						<label for="exampleFormControlInput1" class="form-label font-weight-bolder">
							 <input type="hidden" value="<%=obj.getId() %>" class="form-control" name="id"
							id="exampleFormControlInput1" >
					</div>
					<div class="form-group">
						<label for="exampleFormControlInput1" class="form-label font-weight-bolder">Email
							link</label> <input type="text" value="<%=obj.getLink() %>" class="form-control" name="link"
							id="exampleFormControlInput1" >
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1" class="form-label ">Enter
							Description</label>
						<input class="form-control" name="description"
							id="exampleFormControlTextarea1" value="<%=obj.getDescription() %>"  rows="3"></input>
					</div>
					<div class="form-group mt-1 text-center">
						<button class="btn btn-outline-warning btn-lg">Save Link</button>
					</div>
				</form>

			</div>
		</div>

	</div>
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
</body>
</html>