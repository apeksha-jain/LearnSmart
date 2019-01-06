<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
  <%
     String adminno = request.getParameter("adminno");
     String pass = request.getParameter("pwd");
     /* out.println(adminno);
     out.println(pass); */
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","1234");
     Statement st = con.createStatement();
     ResultSet rs;
     rs= st.executeQuery("select * from student_register where adminno = '"+adminno+"' and pswd='"+pass+"'");
     if(rs.next())
     {
    	 String name=rs.getString(1);
    	/*  out.println(name); */
    	  session.setAttribute("name",name);
    	session.setAttribute("adminno",adminno);
    	 response.sendRedirect("student_main.jsp");
     }
     else{
    	 %>
         <script>alert("Check your credentials");</script>
         <%
     }
  %>
</body>
</html>