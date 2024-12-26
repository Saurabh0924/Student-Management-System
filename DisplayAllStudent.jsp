<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #74ebd5, #ACB6E5);
        color: #333;
    }

    h1 {
        text-align: center;
        color: #fff;
        text-shadow: 2px 2px 5px #333;
    }

    table {
        width: 90%;
        margin: 30px auto;
        border-collapse: collapse;
        background: #fff;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 15px;
        text-align: center;
        border: 1px solid #ddd;
    }

    th {
        background: #74ebd5;
        color: #fff;
        text-transform: uppercase;
    }

    tr:nth-child(even) {
        background: #f2f2f2;
    }

    tr:hover {
        background: #e0f7fa;
        cursor: pointer;
    }

    a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #0056b3;
    }

    .back-link {
        display: block;
        text-align: right;
        margin-right: 20px;
        margin-top: 20px;
        font-size: 18px;
    }

    .back-link:hover {
        text-decoration: underline;
    }

    @media (max-width: 768px) {
        table {
            width: 100%;
        }

        th, td {
            padding: 10px;
        }

        h1 {
            font-size: 22px;
        }

        .back-link {
            font-size: 16px;
        }
    }

</style>
</head>
<body>

<% ResultSet rs = (ResultSet)request.getAttribute("resultSet");
%>
	<h1 align="center">DISPLAYING ALL DETAILS OF STUDENT!</h1>
	<table border="" >

		<tr>
			<th>StudentID</th>
			<th>StudentName</th>
			<th>StudentEmail</th>
			<th>StudentAge</th>
			<th>StudentCourse</th>
			<th>StudentCity</th>
			<th>UPDATE</th>
			<th>DELETE</th> 

		</tr>
		<% while(rs.next()) { %>

		<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2)  %></td>
			<td><%= rs.getString(3)  %></td>
			<td><%= rs.getInt(4)  %></td>
			<td><%= rs.getString(5)  %></td>
			<td><%= rs.getString(6)  %></td>
			<td><a href="find-by-id?studentId=<%=rs.getInt(1)%>">UPDATE</a></td>
			<td><a href="delete-by-id?studentId=<%=rs.getInt(1)%>">DELETE</a></td>
			
		</tr>

		<%}%>

	</table>
	
	<h1 align="right"><a href="index.jsp">BACK TO DASHBOARD:)</a></h1>
</body>
</html>