<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*" %>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
    <%@ page import = "javax.servlet.http.*" %>
    <%@ page import = "org.apache.commons.fileupload.*" %>
   <%@ page import = "org.apache.commons.fileupload.disk.*" %>
   <%@ page import = "org.apache.commons.fileupload.servlet.*" %>
   <%@ page import = "org.apache.commons.io.output.*" %>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File upload</title>
</head>
<body>
   <%!
     String str;
     Connection con;
     Statement stm;
     File file;
     int maxsize=5000*1024;
     int maxfactsize=5000*1024;
     int fid = 1001;
     int val;
     String path = "C:/Users/Apeksha Jain/Documents/lsa resources";
   %>
  <%
    String type = request.getContentType();
    out.println(type);
    if(type.indexOf("multipart/form-data")>=0)
    {
    	out.println("hello");
    	DiskFileItemFactory disfact = new DiskFileItemFactory();
    	disfact.setSizeThreshold(maxfactsize);
    	disfact.setRepository(new File("c:\\temp"));
    	ServletFileUpload upload = new ServletFileUpload(disfact);
    	upload.setSizeMax(maxsize);
    	 List<FileItem> lis = upload.parseRequest(request);
          Iterator iter = lis.iterator();
       /* FileItemIterator iter = upload.getItemIterator(request); */
    	while(iter.hasNext())
    	{
    		 FileItem item = (FileItem)iter.next();
    		/* FileItemStream item = iter.next(); */
    		if(!item.isFormField())
    		{
    			out.println("in if");
    			str=item.getName();
    			//str="notes"+(str.substring(str.indexOf(".")));
    			out.println(str);
    			file=new File(path,str);
        		item.write(file);
        		str=path+"/"+str;
        		out.println("uploaded");
    		}
    	}
    }
  %>
  <%
  try{
	  String query="insert into upload_resources(fid,resources_path) values("+fid+",'"+str+"')";
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","1234");
     stm=con.createStatement();
     int x=stm.executeUpdate(query);
    // out.println("inserted sucessfully");
   /*  if(x==1)
     {
    	 
    	//val = confirm("Your resource has been successfuly uploaded");
    	 
    	 
     }
     out.println(val);
     if(val==1){
    response.sendRedirect("faculty_login.jsp");}  */
     if(x==1)
     {
    	/*  out.println("<script typr=\"text/javascript\">");
    	 out.println("confirm('Your resource has been successfuly uploaded');");
    	 out.println("</script>"); */
    	 response.sendRedirect("faculty_login.jsp");
     }
  }
  catch(Exception e){
	  e.printStackTrace();
  }
  %>
  <!-- <a href="resource.jsp">Click to show</a> -->
</body>
</html>