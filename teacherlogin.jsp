<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Examination System</title>
</head>
<body>
<%
String tid=request.getParameter("teacherid");
String pass=request.getParameter("password");
Connection con=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","260798");
	PreparedStatement ps=con.prepareStatement("select * from teacher where teach_id=? && password=?");
	ps.setString(1, tid);
	ps.setString(2, pass);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("thome.jsp");
	}
	else
	{
		out.print("Invalid Id or Password!");
		response.sendRedirect("index.html");
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>