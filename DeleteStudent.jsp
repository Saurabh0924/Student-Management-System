<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="DeleteStudent.css">
<script type="text/javascript">

// JavaScript to trigger animation on page load
window.onload = function() {
    const heading = document.getElementById("animatedHeading");
    heading.classList.add("animate");
};

</script>

</head>
<body>

	<%
	ResultSet rs = (ResultSet) request.getAttribute("resultSet");
	rs.next();
	%>

	<div class="container">
		<h1 id="animatedHeading">Delete the Student Details</h1>

		<form action="Save-delete-student" method="post">
			<div class="form-group">
				<input type="number" value="<%=rs.getInt(1)%>" name="studentId"
					readonly="readonly">
			</div>
			<div class="form-group">
				<input type="text" value="<%=rs.getString(2)%>" name="studentName"
					readonly="readonly">
			</div>

			<div class="form-group">
				<input type="text" value="<%=rs.getString(3)%>"
					name="studentEmail" readonly="readonly">
			</div>


			<div class="form-group">
				<input type="text" value="<%=rs.getString(6)%>" name="studentCity"
					readonly="readonly">
			</div>

			<div class="form-group">
				<input type="submit" value=" CONFIRM DELETE STUDENT DETAILS">
			</div>
		</form>
		
		<div>
		<h2 align="center"><a href="index.jsp">BACK TO DASHBOARD:)</a></h2>
		</div>
		
	</div>




</body>
</html>


