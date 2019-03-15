<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="POST" action="/HelloWeb/addStudent">
		<table>
			<tr>
				<td><form:label path="id"></form:label></td>
				<td><form:input path="id"/></td>
			</tr>
			<tr>
				<td><form:label path="name"></form:label></td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td><form:label path="age"></form:label></td>
				<td><form:input path="age"/></td>
			</tr>
			<tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
		</table>
	</form:form>
</body>
</html>