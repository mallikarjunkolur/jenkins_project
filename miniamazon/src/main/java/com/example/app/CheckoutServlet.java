package com.example.app;


import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;


public class CheckoutServlet extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {
req.getSession().removeAttribute("cart");
res.sendRedirect("index.jsp");
}
}
