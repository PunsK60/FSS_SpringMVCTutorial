<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Spring MVC Form Handling</title>
</head>
<body>

	<h2>Submitted Student Information</h2>
	<table>
		<tr>
			<td>ID : </td>
			<td>${id}</td>
		</tr>
		<tr>
			<td>NAME : </td>
			<td>${name}</td>
		</tr>
		<tr>
			<td>AGE : </td>
			<td>${age}</td>
		</tr>
		<tr>
			<td>GENDER (is Male) : </td>
			<td>${gender}</td>
		</tr>
		<tr>
			<td>SUBJECTS : </td>
			<td>
			<% 
				String[] registerSubjects= (String[])request.getAttribute("subjects");
	            for(String subject: registerSubjects) {
	               out.println(subject + "<br/>");
	            }
            %>
            </td>
		</tr>
	</table>
	<form:form action="/HelloWeb/staticPage" method="GET">
		<input type="submit" value="Redirect"/>
	</form:form>
</body>
</html>