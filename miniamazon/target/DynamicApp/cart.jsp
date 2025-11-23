<%@ page import="java.util.*, com.example.app.Product" %>
<html><body>
<h2>Your Cart</h2>
<%
List<Product> cart = (List<Product>) session.getAttribute("cart");
double total = 0;
if(cart != null){
for(Product p : cart){ total += p.getPrice(); %>
<div><%= p.getName() %> - ₹ <%= p.getPrice() %></div>
<% }} %>
<h3>Total: ₹ <%= total %></h3>
<a href="checkout.jsp">Proceed to Checkout</a>
</body></html>
