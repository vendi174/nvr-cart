<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

	<h1>Product Form</h1>
	<form:form action="saveProduct" modelAttribute="product"
		enctype="multipart/form-data">

		<table>
			<tr>
				<td><form:hidden path="pid" /></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><form:input path="pname" /></td>
				
			</tr>

			<tr>
				<td>Category :</td>
				<td><form:input path="catid" /></td>
				
			</tr>
			<tr>
				<td>Supplier</td>
				<td><form:input path="suppid" /></td>
				
			</tr>

			<tr>
				<td>price</td>
				<td><form:input path="price" /></td>
				
			</tr>

			<tr>
				<td>stock</td>
				<td><form:input path="stock" /></td>
				
			</tr>

			<tr>
				<td>desc</td>
				<td><form:textarea path="description" /></td>
				
			</tr>
			<tr>
				<td>Product Image</td>
				<td><form:input type="file" path="pimage" /></td>
			</tr>


			<tr>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>

<table align="center">
		<tr bgcolor="pink">
			<td>Product ID</td>
			<td>Product Name</td>
			<td>Category ID</td>
			<td>Supplier ID</td>
			<td>Price</td>
			<td>Stock</td>
			<td>Operation</td>
		</tr>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<c:forEach items="${products}" var="prod">
			<tr bgcolor="cyan">
				<td>${prod.pid}</td>
				<td>${prod.pname}</td>
				<td>${prod.catid}</td>
				<td>${prod.suppid}</td>
				<td>${prod.price}</td>
				<td>${prod.stock}</td>
				<td><a href="<c:url value="deleteProduct/${prod.pid}"/>">Delete</a>
					<a href="<c:url value="updateProduct/${prod.pid}"/>">Update</a>
				</td>
			</tr>
		</c:forEach>

	</table>


</body>
</html>