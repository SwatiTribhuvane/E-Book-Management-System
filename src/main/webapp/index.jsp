<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img{
background:url("img/rptgtpxd-1396254731.avif");
height:70vh;
width:100%;
background-repeat:no-repeat;
background-size:cover;
}
.crd-ho:hover{
background-color:#fcf7f7;
}
</style>
</head>
<body  style="background-color:#fcf7f7;">
<%
User u=(User)session.getAttribute("userobj");
%>
<%@include file="all_component/navbar.jsp"%>
<div class="container-fluid back-img">
	<h2 class="text-center text-white" style="font-size:50px;padding:10%;"><i class="fa-solid fa-book"></i> Eager E-book Management System</h2>
</div>


<!-- start Recent book -->

<div class="container">
	<h3 class="text-center mt-2">Recent Book</h3>
    <div class="row">
	
	<%
		BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2=dao2.getRecentBooks();
		for(BookDtls b:list2)
		{%>
			
		<div class="col-md-3">
		<div class="card crd-ho mt-2">
			<div class="card-body text-center">
				<img src="book/<%=b.getPhotoName()%>" alt="gita" style="height:200px;width:150px;" class="img-thumblin"/>
				<p><%=b.getBookName()%></p>
				<p><%=b.getAuthor()%></p>
				<p>
				<%
					if(b.getBookCategory().equals("Old"))
					{%>
						Categories:<%=b.getBookCategory()%></p>
						<div class="row text-center">
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-5">View</a>
						<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
						<i class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
					<%}else{%>
						
					Categories:<%=b.getBookCategory()%></p>
					<div class="row text-center">
					
					<%
					if(u==null)
					{
					%>
					<a href="login.jsp" class="btn btn-danger btn-sm ml-2">
					<i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
			
					<%}else{
					%>
					<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" 
					class="btn btn-danger btn-sm ml-2">
					<i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
					<%
					}
					%>			
						<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View</a>
						<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
						<i class="fa-solid fa-indian-rupee-sign"></i></a>
					</div>
					<%
					}
				%>
			</div>
		</div>
		</div>
		<%}
		%>
	</div>
	<div class="text-center" style="margin-top:5px;margin-left:2%;">
		<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
	</div>

	</div>

<!-- End of recent book -->

<hr>

<!-- start of new book -->

<div class="container">
	<h3 class="text-center mt-2">New Book</h3>
	<div class="row">
			<%
				BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
				List <BookDtls> list=dao.getNewBook();
				for(BookDtls b:list){
			%>	
			<div class="col-md-3">
			<div class="card crd-ho mt-2">
			<div class="card-body text-center">
				<img src="book/<%=b.getPhotoName()%>" alt="gita" style="height:200px;width:150px;" class="img-thumblin"/>
				<p><%=b.getBookName()%></p>
				<p><%=b.getAuthor() %></p>
				<p>Categories:<%=b.getBookCategory() %></p>
				
			<div class="row text-center">
			<%
			if(u==null)
			{
			%>
			<a href="login.jsp" class="btn btn-danger btn-sm ml-2">
			<i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
			
			<%}else{
			%>
			<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">
			<i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
			<%
			}
			%>
						<a href="view_books.jsp?bid=<%=b.getBookId()%>" 
						class="btn btn-success btn-sm ml-1">View</a>
						<a href="" class="btn btn-danger btn-sm ml-1">
						<%=b.getPrice()%>
						<i class="fa-solid fa-indian-rupee-sign"></i></a>
					</div>
			</div>
		</div>
		</div>
			<% 
				}
			%>
		
		
		</div>
	<div class="text-center" style="margin-top:5px;margin-left:2%;">
		<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
	</div>

	</div>
<!-- End of new book -->
<hr>

<!-- start old book -->

<div class="container">
	<h3 class="text-center mt-2">Old Book</h3>
	<div class="row">
		<%
		BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list3=dao3.getOldBooks();
		for(BookDtls b:list3)
		{%>
			
		<div class="col-md-3">
		<div class="card crd-ho mt-2">
			<div class="card-body text-center">
				<img src="book/<%=b.getPhotoName()%>" alt="gita" style="height:200px;width:150px;" class="img-thumblin"/>
				<p><%=b.getBookName()%></p>
				<p><%=b.getAuthor()%></p>
				<p><%=b.getBookCategory()%></p>
				<div class="row text-center">
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="view_books.jsp?bid=<%=b.getBookId()%>"
					class="btn btn-success btn-sm ml-5">View</a>
					<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
					<i class="fa-solid fa-indian-rupee-sign"></i></a>
				</div>
				
			</div>
		</div>
		</div>
		<%}
		%>
		
		
		
		</div>
	<div class="text-center" style="margin-top:5px;margin-left:1%;">
		<a href="all_old_book.jsp" class="btn btn-danger btn-sm ml-3 text-white">View All</a>
	</div>

	</div>
</div>

<!-- End of old book -->
<%@include file="all_component/footer.jsp" %>
<!-- End of Old book -->
</body>
</html>