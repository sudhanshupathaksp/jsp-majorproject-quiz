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
String subcode=request.getParameter("subjectcode");
String subname=request.getParameter("subjectname");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","260798");
	PreparedStatement ps=con.prepareStatement("insert into subject values(?,?)");
	ps.setString(1, subcode);
	ps.setString(2, subname);
	int status=ps.executeUpdate();
	if(status>0)
	{
		out.print("Subject code and name entered successfully");
	}
	else
	{
		out.print("Some Error Occured! try again");
				response.sendRedirect("addsubject.jsp");
	}
}
catch(Exception e){
	System.out.print(e);
}

%>
</body>
</html>