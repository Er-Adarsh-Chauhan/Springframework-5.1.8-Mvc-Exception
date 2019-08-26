<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style type="text/css">
				table {
						  border-collapse: collapse;
						  width: 100%;
						  overflow-x:auto;
					}

				td {
							  padding: 8px;
							  text-align: left;
							  border-bottom: 1px solid #ddd;
				}
				
				tr:hover {background-color:#f5f5f5;}
		</style>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
	</head>
	<body>
	 
		<h2 style="text-align:center;"><u>Submitted Employee Information</u></h2>
	 
	 
		<table>
		   <tr>
		        <td>Employee ID </td>
		        <td>${empId}</td>
		    </tr>
		    <tr>
		        <td>Employee Name</td>
		        <td>${name}</td>
		    </tr>
		    <tr>
		        <td>Employee Age</td>
		        <td>${age}</td>
		    </tr>
		    <tr>
		        <td>Employee Salary</td>
		        <td>${salary}</td>
		    </tr>
		</table>  
		
		   
	</body>
</html>