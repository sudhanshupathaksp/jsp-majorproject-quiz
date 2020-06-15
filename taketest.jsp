<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Take Test</title>
</head>
<body>
<%

String subcode=request.getParameter("subjectcode");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","260798");
	PreparedStatement ps=con.prepareStatement("select * from questions where sub_code=?");
	ps.setString(1, subcode);
	ResultSet rs=ps.executeQuery();
int i=1;
%>
<form action="result.jsp">
<% 
	while(rs.next())
	{%>
	
	Q:<input type="text"   name="n<%=i%>"   value="<%=rs.getString(2)%>" size="100"><br>
	a)<input type="radio" name="op<%=i%>"  value="<%=rs.getString(3)%>" ><%out.print(rs.getString(3)); %><br>
	b)<input type="radio" name="op<%=i%>" value="<%=rs.getString(4)%>"><%out.print(rs.getString(4)); %><br>
	c)<input type="radio" name="op<%=i%>" value="<%=rs.getString(5)%>"><%out.print(rs.getString(5)); %><br>
	d)<input type="radio" name="op<%=i%>" value="<%=rs.getString(6)%>"><%out.print(rs.getString(6)); %><br>
	<input type="hidden" name="a<%=i%>" value="<%=rs.getString(7)%>"><br>
	
	<%
	i++;
	}
i--;
%>	

<input type="hidden" name="count" value="<%=i%>"><br>
	
<input type="submit"  value="click">
</form>
<% 

}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>