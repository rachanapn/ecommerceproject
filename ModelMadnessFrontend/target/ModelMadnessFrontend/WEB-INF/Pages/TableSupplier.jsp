



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%@include file="header.jsp"%>

<div class="container">
  <div class="row">
<div class="page-header">
<div>
<h2 style="color:black" font-weight:100%;><strong>Supplier DETAILS TABLE</strong></h2>
</div>
</div>
</div>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th><h3 style=color:black;><strong>supplierID</strong></h3></th> 
          <th><h3 style=color:black;><strong>sname</strong></h3></th> 
        <th><h3 style=color:black;><strong>spassword</strong></h3></th>
                <th><h3 style=color:black;><strong>mobile</strong></h3></th>
        
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
    
    <c:forEach var="ss" items="${sList}" varStatus="status">
    
      <tr>
          <td><h4 style=color:black;>${ss.sid}</h4></td>
          <td><h4 style=color:black;>${ss.sname}</h4></td>
        <td><h4 style=color:black;>${ss.password}</h4></td>
         <td><h4 style=color:black;>${ss.mobile}</h4></td>
        
     
          
          <td>
            <p>
            
            
            <a href = "sedit.do?Id=${ss.sid}" class = "btn btn-primary" role = "button">
               EDIT
            </a> 
            
            <a href = "sdel.do?Id=${ss.sid}" class = "btn btn-primary" role = "button">
               DELETE
            </a>
         </p>  
          </td>
      </tr>
      </c:forEach>
        </tbody>
  </table>

</div>
</body>
</html>
