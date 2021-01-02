<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto mb-2 ">
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="viewLinks">View Links</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="linkform">Form</a>
        </li>
      
      </ul>
     
    </div>
  </div>
</nav>
	<div class="container mt-5">
	<div class="text-center">
	<h1>All Links</h1> 
	</div>
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<c:forEach items="${links }" var="link">
					<div class="card mt-2">
						<div class="card-body">
							<h1>
								ID :
								<c:out value="${link.getId() }"></c:out>
							</h1>
							<p>
								Link :
								<c:out value="${link.getLink() }"></c:out>
							</p>
							<p>
								Description :
								<c:out value="${link.getDescription() }"></c:out>
							</p>
							<a class="btn btn-danger"
								href="delete?id=<c:out value="${link.getId() }"></c:out>">DELETE</a>
							<a class="btn btn-warning"
								href="update?id=<c:out value="${link.getId() }"></c:out>">UPDATE</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>