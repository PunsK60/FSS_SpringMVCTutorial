<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Student</title>
</head>
<body>
	<form:form method="POST" action="/HelloWeb/addStudent">
		<table>
			<tr>
				<td><form:label path="id">ID : </form:label></td>
				<td><form:input path="id" value=""/></td>
			</tr>
			<tr>
				<td><form:label path="name">NAME : </form:label></td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td><form:label path="age">AGE : </form:label></td>
				<td><form:input path="age"/></td>
			</tr>
			<tr>
				<td><form:label path="gender">GENDER : </form:label></td>
				<td><form:checkbox path="gender" value="is Male"/></td>
			</tr>
			<tr>
				<td><form:label path="subjects">SUBJECTS : </form:label></td>
				<td><form:checkboxes items="${registerSubjects}" path="subjects"/></td>
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