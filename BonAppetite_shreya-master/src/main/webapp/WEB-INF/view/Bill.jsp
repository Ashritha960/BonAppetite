<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form action="" method="POST" modelAttribute="billlist">
	
	<table>
	<tr>
	<td><b>Bill NO:</b></td>
	<td>${billNo}</td>
	</tr>
	<c:forEach items="${billlist}" var="billlist">
	
	
	<tr>
	<td><b>CustomerName:</b></td>
	<td>${billlist.fname}</td>
	</tr>
	<tr>
	<td><b>CustomerPhone:</b></td>
	<td>${billlist.phone}</td>
	</tr>
	</table>
	<b>PRODUCT_DETAILS</b><br>
	<table border="1">
	     <tr>
	        <th>FoodItemName</th>
	        <th>Price</th>
	        <th>Quantity</th>
	        <th>Amount</th>
	     </tr>
	     <tr>
	     <td>${billlist.foodItemName}</td>
	     <td>${billlist.foodItemPrice}</td>
	     <td>${billlist.quantity}</td>
	     <td>${billlist.amount}</td>
	     
	   </tr>
	 </table>
	
	</c:forEach>
	</form:form>
  
  
</body>
</html>