<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	 <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" type="text/css" href="css_files/tstyle.css">
     <link rel="shortcut icon" href="css_files/favicon.ico"/>
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			<div class="sidenav">
				<span class="glyphicon glyphicon-user"></span>
							<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Welcome <%=session.getAttribute("name")%></button>
						<span class="caret"></span><!-- <span class="glyphicon glyphicon-bell"></span> -->
						<ul class="dropdown-menu">
							<li><a href="#">Account Settings</a></li>
							<li><a href="Logout.jsp">Signout</a></li>
						</ul>
					</div>
				<ul id="features">
					<li><a href="studentdash.jsp">E-RESOURCES</a></li>
					<br><br>
					<li><a href="#">ASSIGNMENTS</a></li><br><br>
					<li><a href="#">TESTS and QUIZES</a></li><br><br>
					<li><a href="#">ANNOUNCEMENTS</a></li><br><br>
					<li><a href="#">LIVE CHAT</a></li>
				</ul>
				<p>------------------------------------------</p>
				<img src="css_files\favicon.ico" id="foot_img"/><p>Copyright<i class="fa">&#xf1f9;</i> 2018 LearnSmart. All rights reserved.</p>
			</div>
		</div>
		<div class="col-sm-10">
		<%!
		String fname,mname,lname,course,branch,mobno,eid,pswd,adminno;
		%>
		<%
		  /*  String name = session.getAttribute("name"); */
		   adminno = (String)request.getSession().getAttribute("adminno");
		   /* out.println(username); */
		    Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","1234");
            Statement st = con.createStatement();
            ResultSet rs;
            rs= st.executeQuery("select * from student_register where adminno = '"+adminno+"'");
            if(rs.next())
            {
            	 fname= rs.getString(1);
            	 mname= rs.getString(2);
                 lname= rs.getString(3);
                course= rs.getString(4);
            	 branch= rs.getString(5);
            	 mobno= rs.getString(6);
            	 eid= rs.getString(7);
            	 pswd= rs.getString(9);
            	
            }
            /* out.println(fname+mname+lname+course+branch+mobno+eid+pswd); */
		%>
		<div class="page-header"><h3>ACCOUNT DETAILS</h3></div>
		 <table class="table table-bordered">
		 <thead>
		   <tr>
		    <th>FIRST NAME</th>
	    	<th>MIDDLE NAME</th>
		    <th>LAST NAME</th>
		    <th>COURSE</th>
		    <th>BRANCH</th>
		    <th>MOBILE NO</th>
		    <th>EMAIL ID</th>
		    <th>ADMISSION NO</th>
		    <th>PASSWORD</th>
		   </tr>
		  </thead>
		  <tbody>
		<tr>
		<td><%=fname %></td>
		<td><%=mname %></td>
		<td><%=lname %></td>
		<td><%=course %></td>
		<td><%=branch %></td>
		<td><%=mobno %></td>
		<td><%=eid %></td>
		<td><%=adminno %></td>
		<td><%=pswd%></td>
		</tr>
		</tbody>
		</table>
		</div>
	</div>
</div>
</body>
</html>