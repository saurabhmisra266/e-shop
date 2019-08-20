<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/updateCart">
<c:if test="${cartInfo.cart.isEmpty()}">
<p> Your Cart is empty</p>
<a href="${pageContext.request.contextPath}/">Continue Shopping</a>
</c:if>
<c:if test="${!cartInfo.cart.isEmpty()}">
    <table class ="cart">
		<div class="title">Shopping Bag</div>
		<div class="item">
		   <tr><td>Image</td><td>Price</td><td>Quantity</td></tr>
		   <c:forEach var="cart" items="${cartInfo.cart}">
		       <div class="image">
	               <td> <img src="${pageContext.request.contextPath}/static/images/${cart.image}" alt="man suit"></td>
	           </div>
	           <div class="total-price">
	               <td> <c:out value="${cart.price}"></c:out> </td>
	           </div>
	           <div class="quantity">
	              <td> <input type="number" name="quantity" value="${cart.quantity}">Update Quantity</td>
	            </div>
	            	<td> <input type="hidden" name="image" value="${cart.image}"> </td>
	                <td> 
	                <input type="submit" name="update" value="${cart.image}" onclick="alert('Item deleted')">
	                 </td>
		     </c:forEach>
		   	<tr><td>Total Quantity</td><td>Total Amount</td></tr>
	          <td> <c:out value="${cartInfo.getQuantityTotal()}"></c:out> </td>
	           <td> <c:out value="${cartInfo.getAmount()}"></c:out> </td>
		</div>
	</div>
</c:if>
</body>
</html>