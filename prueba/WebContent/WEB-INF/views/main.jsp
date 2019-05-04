<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
</head>
<body>
<h1>Lista de estudiante determinando si es mayor o menor de edad</h1>

	<c:forEach items="${students}" var="student">
		<c:choose>         
         <c:when test = "${student.getAge() >= 18}">
			<p><c:out value = "${student.getName()}"/> es mayor</p>			
         </c:when>
         
         <c:when test = "${ student.getAge() < 18}">
			<p><c:out value = "${student.getName()}"/> es menor</p>	
         </c:when>         
     	</c:choose>		 
	
	</c:forEach>	

</body>
</html>