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
String ques=request.getParameter("question");
String op1=request.getParameter("option1");
String op2=request.getParameter("option2");
String op3=request.getParameter("option3");
String op4=request.getParameter("option4");
String ans=request.getParameter("answer");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","260798");
	PreparedStatement ps=con.prepareStatement("insert into questions values(?,?,?,?,?,?,?)");
	ps.setString(1, subcode);
	ps.setString(2, ques);
	ps.setString(3, op1);
	ps.setString(4, op2);
	ps.setString(5, op3);
	ps.setString(6, op4);
	ps.setString(7, ans);
	int status=ps.executeUpdate();
	if(status>0)
	{
		out.print("<b>Question Entered Successfully</b>");
	}
	else
	{
		out.print("<b>Something Went Wrong! Try Again</b>");
		response.sendRedirect("addques.jsp");
	}
}catch(Exception e){
	e.printStackTrace();
}


%>

</body>
</html>