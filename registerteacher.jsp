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
String tid=request.getParameter("id");
String nam=request.getParameter("name");
String pass=request.getParameter("password");
String email=request.getParameter("email");
String dept=request.getParameter("department");
String cont=request.getParameter("contact");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","260798");
	PreparedStatement ps=con.prepareStatement("insert into teacher values(?,?,?,?,?,?)");
	ps.setString(1, tid);
	ps.setString(2, pass);
	ps.setString(3, email);
	ps.setString(4, dept);
	ps.setString(5, cont);
	ps.setString(6, nam);
	int status=ps.executeUpdate();
	if(status>0)
	{
		out.print("Registration Successfull!");
	}
	else
	{
		out.print("Sorry! Try Again");
		response.sendRedirect("registerteacher.html");
	}
}
catch(Exception e){
	System.out.print(e);
}
%>
</body>
</html>