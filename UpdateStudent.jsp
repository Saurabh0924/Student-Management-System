<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="UpdateStudent.css">
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
		<h1 id="animatedHeading">Update the Student Details</h1>

		<form action="Save-updated-student" method="post">

			<div class="form-group">
				<input type="number" value="<%=rs.getInt(1)%>" name="studentId"
					readonly="readonly">
			</div>

			<div class="form-group">
				<input type="text" value="<%=rs.getString(2)%>" name="studentName">
			</div>

			<div class="form-group">
				<input type="text" value="<%=rs.getString(3)%>" name="studentEmail">
			</div>

			<div class="form-group">
				<input type="number" value="<%=rs.getInt(4)%>" name="studentAge">
			</div>

			<div class="form-group">
				<input type="text" value="<%=rs.getString(5)%>" name="studentCourse">
			</div>



			<div class="form-group">
				<input type="text" value="<%=rs.getString(6)%>" name="studentCity">
			</div>


			<div class="form-group">
				<input type="submit" value="UPDATES">
			</div>



		</form>


		<div>
			<h2>
				<a href="index.jsp">BACK TO DASHBOARD:)</a>
			</h2>
		</div>

	</div>
</body>
</html>



