<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,com.aayush.jsp.tagdemo.Student" %>

<%
	//just some data provided by mvc
	List<Student> data=new ArrayList<Student>();
	
	data.add(new Student("John","Doe",false));
	data.add(new Student("Maxwell","John",false));
	data.add(new Student("Mary","Public",true));
	
	pageContext.setAttribute("myStudents",data);
%>

<html>
<body>

	<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents}">
	
	<tr>
		<td>${tempStudent.firstName}</td>
		<td>${tempStudent.lastName}</td>
		<td>
			<c:choose>
			
				<c:when test="${tempStudent.goldCustomer}">
					Special Discount
				</c:when>
				<c:otherwise>
					no soup for you
				</c:otherwise>
			</c:choose>
			
		</td>
	</tr>
	
	</c:forEach>	
	</table>
	
</body>
</html>