<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/static/CSS/carts.css"
	rel="stylesheet" type="text/css">
</head>
<body>
<c:if test="${cartInfo.cart.isEmpty()}">
NO ITEMS IN YOUR CART
</c:if>
<p>
<h>
SHIPPING DETALIS<br>
</h>
<tr>NAME: <c:out value="${account.name}"></c:out><br></tr>
<tr>EMAIL: <c:out value="${account.email}"></c:out><br></tr>
<tr>MOBILE NO: <c:out value="${account.mobile}"></c:out><br></tr>
<tr>ADDRESS: <c:out value="${account.address}"></c:out><br></tr>
<tr>STREET: <c:out value="${account.street}"></c:out><br></tr>
<tr>STATE: <c:out value="${account.state}"></c:out><br></tr>
</p>
<c:if test="${!cartInfo.cart.isEmpty()}">
<div class="item">
<table id="ele">
<tr><td>Items</td><td>Price</td><td>Quantity</td></tr>
	<c:forEach var="cart" items="${cartInfo.cart}">
	<tr>
	<td> <img src="${pageContext.request.contextPath}/static/images/${cart.image}" alt="man suit"></td>
	<td> <c:out value="${cart.price}"></c:out> </td>
	<td> <c:out value="${cart.quantity}"></c:out></td>
	</tr>
	</c:forEach>
	<tr><td>Total Quantity</td><td>Total Amount</td></tr>
	<td> <c:out value="${cartInfo.getQuantityTotal()}"></c:out> </td>
	<td> <c:out value="${cartInfo.getAmount()}"></c:out> </td>
</table>
</div>
<a href="${pageContext.request.contextPath}/orderPlaced">PLACE ORDER</a>
  </c:if>
</body>
</html>