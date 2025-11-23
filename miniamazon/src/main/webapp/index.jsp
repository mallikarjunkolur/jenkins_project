<%@ page import="java.util.*, com.example.app.Product" %>
<html>
<head>
<title>Mini Amazon</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav class="navbar navbar-dark bg-dark p-3">
<span class="navbar-brand">Mini Amazon</span>
<input class="form-control w-50" placeholder="Search products...">
<a href="cart.jsp" class="btn btn-warning">Cart</a>
</nav>


<div class="container mt-4">
<div class="row">
<div class="col-md-3">
<h5>Categories</h5>
<ul class="list-group">
<li class="list-group-item">Electronics</li>
<li class="list-group-item">Fashion</li>
<li class="list-group-item">Appliances</li>
</ul>
</div>


<div class="col-md-9">
<div class="row">
<%
List<Product> products = (List<Product>) request.getAttribute("products");
for(Product p : products) {
%>
<div class="col-md-4">
<div class="card mb-3">
<img src="<%= p.getImage() %>" class="card-img-top">
<div class="card-body">
<h5><%= p.getName() %></h5>
<p>₹ <%= p.getPrice() %></p>
<form action="CartServlet" method="post">
<input type="hidden" name="id" value="<%= p.getId() %>">
<input type="hidden" name="name" value="<%= p.getName() %>">
<input type="hidden" name="price" value="<%= p.getPrice() %>">
<input type="hidden" name="image" value="<%= p.getImage() %>">
<button class="btn btn-warning">Add to Cart</button>
</form>
</div></div></div>
<% } %>
</div></div></div></div>
</body>
</html>
