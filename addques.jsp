<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Questions</title>
</head>
<body>
<h2><i>Add Questions</i></h2>
<form action="addquestions.jsp">
<table>
<tr><td><b>Enter Subject code:</b></td><td><input type="text" name="subjectcode"></td></tr>
<tr><td><b>Enter Question:</b></td><td><input type="text" name="question"></td></tr>
<tr><td><b>Option1:</b></td><td><input type="text" name="option1"></td></tr>
<tr><td><b>Option2:</b></td><td><input type="text" name="option2"></td></tr>
<tr><td><b>Option3:</b></td><td><input type="text" name="option3"></td></tr>
<tr><td><b>Option4:</b></td><td><input type="text" name="option4"></td></tr>
<tr><td> <b>Answer:</b></td><td><input type="text" name="answer"></td></tr>
<tr><td colspan="2"><input type="submit" value="submit"></td></tr>
</table>
</form>
</body>
</html>