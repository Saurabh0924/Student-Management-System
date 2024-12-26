<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Studentdeatils.css">
<script type="text/javascript">

// JavaScript to trigger animation on page load
window.onload = function() {
    const heading = document.getElementById("animatedHeading");
    heading.classList.add("animate");
};

</script>

</head>

<body>

	<div class="container">
		<h1 id="animatedHeading">Enter the Student Details</h1>
		<form action="add-student" method="post">
			<div class="form-group">
				<input type="number" placeholder="Enter ID:" name="studentId">
			</div>
			<div class="form-group">
				<input type="text" placeholder="Enter Name:" name="studentName">
			</div>
			<div class="form-group">
				<input type="text" placeholder="Enter Email:" name="studentEmail">
			</div>
			<div class="form-group">
				<input type="number" placeholder="Enter Age:" name="studentAge">
			</div>
			<div class="form-group">
				<input type="text" placeholder="Enter Course:" name="studentCourse">
			</div>
			<div class="form-group">
				<input type="text" placeholder="Enter City:" name="studentCity">
			</div>
			<div class="form-group">
				<input type="submit" value="Add Student">
			</div>
			
		</form>
		<div>
		<h2 align="right"><a href="index.jsp">BACK TO DASHBOARD:)</a></h2>
		</div>
	</div>



</body>
</html>