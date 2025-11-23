package com.example.app;


import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;


public class ProductServlet extends HttpServlet {
protected void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {


List<Product> products = new ArrayList<>();
products.add(new Product(1, "Laptop", 55000, "images/laptop.jpg"));
products.add(new Product(2, "Headphones", 2500, "images/headphones.jpg"));
products.add(new Product(3, "Smart Watch", 3200, "images/watch.jpg"));
products.add(new Product(4, "Mobile Phone", 18000, "images/mobile.jpg"));
products.add(new Product(5, "Camera", 45000, "images/camera.jpg"));


req.setAttribute("products", products);
req.getRequestDispatcher("index.jsp").forward(req, res);
}
}
