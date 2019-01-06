<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <% %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Teacher Dashboard</title>
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
     <script type="text/javascript">
     	$(document).ready(function(){
        $("#subj_form").hide();
        $("#new").click(function(e) {
            $("#subj_form").show();
           /* $("#new").hide();*/

        });
        $("#bck").click(function(e) {
            $("#subj_form").hide();
           /* $("#new").hide();*/

        });
    });
     </script>
</head>
<body>
<%-- <% 
    int fid = 1001;
    
%> --%>
<div class="container-width">
		<div class="col-sm-2">
	<div class="sidenav">
		<span class="glyphicon glyphicon-user"></span>
		<div class="dropdown">
			<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Anand</button>
			<span class="caret"></span><!-- <span class="glyphicon glyphicon-bell"></span> -->
			<ul class="dropdown-menu">
				<li>1</li>
				<li>2</li>
			</ul>
		</div>
		<ul id="features">
			
			<li><a href="#">E-RESOURCES</a></li>
			<br><br>
			<li><a href="#">ASSIGNMENTS</a></li><br><br>
			<li><a href="#">TESTS and QUIZES</a></li><br><br>
			<li><a href="#">ANNOUNCEMENTS</a></li><br><br>
			<li><a href="#">LIVE CHAT</a></li>
		</ul>
		<p>---------------------------------------------------</p>
		<img src="css_files\favicon.ico" id="foot_img"/><p>Copyright<i class="fa">&#xf1f9;</i> 2018 LearnSmart. All rights reserved.</p>
	</div>
		</div>
	<div class="col-sm-10">
		<div class="page-header"><h1>E-RESOURCES</h1></div>
			<input type="submit" value="NEW" id="new">
			<input type="submit" value="BACK" id="bck">
			<form class="form-inline" action="controller.jsp" method="post" id="subj_form" enctype="multipart/form-data">
				<!-- <div class="form-group">
					<input type="text" class="form-control" name="course" placeholder="COURSE" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="sem" placeholder="SEMESTER" required>
				</div> -->
				<!-- <div class="form-group">
					<input type="text" class="form-control" name="branch" placeholder="BRANCH">
				</div> -->
				<div class="form-group">
					<input type="text" class="form-control" name="subc" placeholder="SUBJECT CODE" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="subjectn" placeholder="SUBJECT NAME" required>
				</div>
				<!-- <label for="files" >Upload</label> -->
				<input type="file" name="upload" id="files" >
				<input type="submit" value="save">
			</form>
			<input type="submit" id="view" value="VIEW">
	</div>
</body>
</html>