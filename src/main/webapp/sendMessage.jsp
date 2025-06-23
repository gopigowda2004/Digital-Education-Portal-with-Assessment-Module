<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Retrieve form data
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    // Optional: Store form data in session or database (for now, just an example)
    session.setAttribute("firstName", firstName);
    session.setAttribute("lastName", lastName);
    session.setAttribute("email", email);
    session.setAttribute("message", message);

    // Redirect to success page
    response.sendRedirect("thankyou.jsp");
%>
