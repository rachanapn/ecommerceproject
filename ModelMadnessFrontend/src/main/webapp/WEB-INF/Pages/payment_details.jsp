<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>ModelMadness</title>

<!-- Bootstrap core CSS -->

<!--Pulling Awesome Font -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<spring:url value="/resources/css/wired.css" var="style"/><link rel="stylesheet" href="${style}">
<spring:url value="/resources/css/home.css" var="style"/><link rel="stylesheet" href="${style}">
<spring:url value="/resources/css/HomePage.css" var="style"/><link rel="stylesheet" href="${style}">
   
</head>



<body style="background-color:#76D7C4;">
<%@include file="header.jsp"%>

<form:form cssClass="form-horizontal" action="success_page" method="POST">
  Select Payment Options

  <label><input type="radio" name="payment" value="Credit Card" required>Credit Card</label><br>
  

  <label><input type="radio" name="payment" value="debitcard">debitcard</label><br>
  <label><input type="radio" name="payment" value="paytm">paytm</label>
  <br>
  <label><input type="radio" name="payment" value="phonepay" >phonepay</label><br>
  <label><input type="radio" name="payment" value="cashondelivery">cashondelivery</label><br>
  

 <input type="submit" value="submit">
</form:form>

	
	</body>
	</html>