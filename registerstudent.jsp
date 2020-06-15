<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String id=request.getParameter("enroll");
String email=request.getParameter("email");
String pass=request.getParameter("password");
String branch=request.getParameter("branch"); 
String sem=request.getParameter("semester");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","260798");
	PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,pass);
	ps.setString(3,email);
	ps.setString(4,branch);
	ps.setString(5,name);
	ps.setString(6, sem);
	int status=ps.executeUpdate();
	if(status>0)
	{
		out.print("Registration Successfull");
	}
	else{
		out.print("Sorry! Try Again");
		response.sendRedirect("registerstudent.html");
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>