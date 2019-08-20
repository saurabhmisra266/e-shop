<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <link href="${pageContext.request.contextPath}/static/CSS/home.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>myShop</title>
</head>
<body>
           <div id="wrapper">
               <div id="header">
                   <div id="subheader">
                       <div class="container">
                            <a href="#">ABOUT</a><a href="${pageContext.request.contextPath}/createAccount">SIGNUP</a><a href="#">HELP</a>
                            <p>my shopping website</p>
                    
                       </div>
                   </div>
                   <div id="mainheader">
                       <div id="logo">
                            <span id="ist">MY</span> <span id="iist">SHOP.COM</span>
                       </div>
                       <div id="search">
                           <form action="">
                               <input class="search-area" type="text" name="text" placeholder="Search here">
                               <input class="search-btn" type="submit" name="submit" value="search">
                           </form>
                       </div>
                       <div id="user-menu">
                           <li><a href="#">CART</a></li>
                           <li><a href="${pageContext.request.contextPath}/login">LOGIN</a></li>
                       </div>
                       
                    </div>
               </div>
               <div id="navigation">
                   <nav>
                       <a href="#">ELECTRONICS</a>
                       <a href="#">TV&APPLIANCES</a>
                       <a href="#">MEN</a>
                       <a href="#">WOMEN</a>
                       <a href="#">BABY&KIDS</a>
                       <a href="#">OFFER ZONE</a>
                   </nav>
               </div>
           </div>


        </body>
</html>