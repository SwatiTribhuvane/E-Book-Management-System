<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color:#f0f2f2;">
<%@include file="navbar.jsp"%>
<c:if test="${empty userobj}">
<c:redirect url="../login.jsp"/>
</c:if>
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
					<h4 class="text-center">Add Books</h4>
					
					<c:if test="${not empty SuccessMsg }">
						<p class="text-center text-success">${SuccessMsg}</p>
						<c:remove var="SuccessMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg}</p>
						<c:remove var="failedMsg" scope="session"/>
					</c:if>
					
					
					<form action="../add_books" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="ExampleInputEmail1">Book Name*</label> 
							<input type="text" name="bname" class="form-control" id="ExampleInputEmail1" 
							aria-describedby="emailHelp">
						</div>

					<div class="form-group">
							<label for="ExampleInputEmail1">Author Name*</label> 
							<input type="text" name="author" class="form-control" id="ExampleInputEmail1" 
							aria-describedby="emailHelp">
					</div>
					
					<div class="form-group">
							<label for="ExampleInputPassword1">Price*</label> 
							<input type="number" name="price" class="form-control" id="ExampleInputPassword1">
					</div>
					
					<div class="form-group">
							<label for="inputState">Book Categories</label> 
							<select id="inputState" name="categories" class="form-control">
								<option selected>--Select--</option>
								<option value="New">New Book</option>
							</select>		
					</div>				
					
					<div class="form-group">
							<label for="inputState">Book Status</label> 
							<select id="inputState" name="status" class="form-control">
								<option selected>--Select--</option>
								<option value="Active">Active</option>
								<option value="Inactive">Inactive</option>
							</select>		
					</div>
					
					<div class="form-group">
							<label for="ExampleFormControlFile1">Upload Photo</label> 
							<input type="file" name="bimg" class="form-control-file" 
							id="ExampleFormControlFile1" aria-describedby="emailHelp">
					</div>
					
					<button type="submit" class="btn btn-primary">Add</button>
							
					
					</form>
				
				
				
				</div>
			</div>
		</div>
	</div>
</div>
<div style="margin-top:40px;">
	<%@include file="footer.jsp" %>
	</div>
</body>
</html>