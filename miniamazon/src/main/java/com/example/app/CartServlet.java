package com.example.app;


import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;


public class CartServlet extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {


HttpSession session = req.getSession();
List<Product> cart = (List<Product>) session.getAttribute("cart");
if(cart == null) cart = new ArrayList<>();


cart.add(new Product(
Integer.parseInt(req.getParameter("id")),
req.getParameter("name"),
Double.parseDouble(req.getParameter("price")),
req.getParameter("image")
));


session.setAttribute("cart", cart);
res.sendRedirect("cart.jsp");
}
}
