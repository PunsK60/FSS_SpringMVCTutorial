<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Submitted Student Information</h2>
      <table>
		<tr>
			<td>ID</td>
			<td>${id}</td>
		</tr>
		<tr>
            <td>Name</td>
            <td>${name}</td>
         </tr>
         <tr>
            <td>Age</td>
            <td>${age}</td>
         </tr>  
      </table>  
</body>
</html>