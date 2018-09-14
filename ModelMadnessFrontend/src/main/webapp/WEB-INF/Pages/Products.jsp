<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="product" items="${pList}" varStatus="status">
   <div class = "col-sm-4 col-md-4 ">
      <div class = "thumbnail">
       
          <spring:url value="/resources/img/${product.pid}.jpg" var="imgs" /><img height="150vh" max-width="90%" src="${imgs}"/>
      </div>
      
      <div class = "caption">
         <h4><strong>${product.pname}</strong></h4>

   
         <p>
            <a href ="prodETAIL?Id=${product.pid}"  class = "btn btn-primary" role = "button">
               VIEW DETAILS
            </a> 
           
         </p>
         
      </div>
   </div>
   </c:forEach>
</body>
</html>