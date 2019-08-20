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
<form method="post" action="${pageContext.request.contextPath}/updateCart">
<c:if test="${cartInfo.cart.isEmpty()}">
<p> Your Cart is empty</p>
<a href="${pageContext.request.contextPath}/">Continue Shopping</a>
</c:if>
<c:if test="${!cartInfo.cart.isEmpty()}">
		<div class="title">Shopping Bag</div>
			
		<div class="item">
		<table id="ele">
		 <div class="heading">
		   <tr><th>Image</th><th>Price</th><th>Quantity</th></tr>
		   </div>
		   <c:forEach var="cart" items="${cartInfo.cart}">
		   <tr>
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
	                 </tr>
		     </c:forEach>
	           
	              </div>
	           </table>
	           <div id="details">
	             <div id="g">
	              <p>Total Quantity:<c:out value="${cartInfo.getQuantityTotal()}"></c:out></p>
	              <p>Total Amount:<c:out value="${cartInfo.getAmount()}"></c:out></p>
	              </div>
	              <p > <input type="submit" name="update" value="Update Cart"> </p>
	           <p><a href="${pageContext.request.contextPath}/placeOrder">Place Order</a></p>
	            </div>    
	           
		</div>
	</div>
	          
	           
	</form>
</c:if>
</body>
</html>