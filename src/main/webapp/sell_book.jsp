<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Book</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color:#f0f1f2;">	
<%@include file="all_component/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"  %>
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center text-primary p-1">Sell Old Book</h4>
				
					<c:if test="${not empty SuccessMsg }">
						<p class="text-center text-success">${SuccessMsg}</p>
						<c:remove var="SuccessMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg}</p>
						<c:remove var="failedMsg" scope="session"/>
					</c:if>
						<form action="add_old_book" method="post" enctype="multipart/form-data">
												
						<input type="hidden" value="${userobj.email}" name="user"/>
						
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
							<label for="ExampleFormControlFile1">Upload Photo</label> 
							<input type="file" name="bimg" class="form-control-file" 
							id="ExampleFormControlFile1" aria-describedby="emailHelp">
					</div>
					
					<button type="submit" class="btn btn-primary">Sell</button>
							
					
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>