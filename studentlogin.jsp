<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login Portal</title>
</head>
<body>
<%
String eid=request.getParameter("enrollmentid");
String pass=request.getParameter("password");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","260798");
	PreparedStatement ps=con.prepareStatement("select * from student where enrollment_id=? && password=?");
	ps.setString(1, eid);
	ps.setString(2, pass);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		out.print("Login Successfull");
		response.sendRedirect("studenthome.jsp");
	}
	else
	{
		out.print("Invalid Id or Password! try again");
				response.sendRedirect("index.html");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>