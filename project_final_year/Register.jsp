<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%

out.println("hello");
try{
	String DRIVER="com.mysql.jdbc.Driver";  
	String CONNECTION_URL="jdbc:mysql://localhost:3306/register";  
	String USERNAME="root";  
	String PASSWORD="1234"; 
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD); 
	
	
	
	//out.println(request.getParameter("fname"));
	String n=request.getParameter("fname");
	
	//out.println(request.getParameter("mname"));
	String mn=request.getParameter("mname");
	//out.println(request.getParameter("lname"));
	String nl=request.getParameter("lname");
	
	//out.println(request.getParameter("course"));
	String c=request.getParameter("course");
	//out.println(request.getParameter("branch"));
	String b=request.getParameter("branch");
	
	//out.println(request.getParameter("mno"));
    String m=request.getParameter("mno");
	//out.println(request.getParameter("email"));
	String e=request.getParameter("email");
	
	//out.println(request.getParameter("adminno"));
	String a=request.getParameter("adminno");
	//out.println(request.getParameter("pswd"));
	String p=request.getParameter("pswd");
	
	
	//out.println(request.getParameter("cpswd"));
	String cp=request.getParameter("cpswd");

	Statement ps= con.createStatement();
	//out.println("values");
	//out.println(n+""+mn+""+nl+" "+a);
	String sql="insert into student_register values('"+n+"','"+mn+"','"+nl+"','"+c+"','"+b+"',"+m+",'"+e+"','"+a+"','"+p+"','"+cp+"')";
	
	int s= ps.executeUpdate(sql);
	
	if(s>0){
		//out.println("you are successfully registered.....");
		//<jsp:forward page="nameof jsp.jsp"/>;
		response.sendRedirect("main.html");
		}
	
}
catch(Exception e){System.out.println(e);}



%>



</body>
</html>