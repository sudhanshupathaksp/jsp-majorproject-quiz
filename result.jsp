<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
 int correct=0;
 int incorrect=0;
 String count= request.getParameter("count");
 int count1= Integer.parseInt(count);
 out.print("Total Questions:"+" "+count1+"<br>");
 for(int i=1;i<=count1;i++)
 {

	 String opt=request.getParameter("op"+i);
	 String answer=request.getParameter("a"+i);
	 if(opt.equals(answer))
	 {
	 correct++;
	 }
	 else
	 {
	 incorrect++;
	 }
 }
 out.print("Total Correct Answers:"+" "+correct+"<br>");
 out.print("Total Incorrect Answers:"+" "+incorrect+"<br>");
 
 
%>
</body>
</html>
