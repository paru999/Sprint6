<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${not empty lists}">
<div align="center">
       <table cellpadding="5">
           <caption><h2>List of users</h2></caption>
           <tr>
              
               <th>Name</th>
               <th>Email</th>
               <th>Profession</th>
           </tr>
           <c:forEach var="tbl_user" items="${lists}">
               <tr>
                
     <td>${tbl_user.getListusername()}</td>
     <td> ${tbl_user.getListlastname()}</td>
      <td> ${tbl_user.getListimage()}</td>
     
    
               </tr>
           </c:forEach> 
       </table>
   </div>  
   </c:if>


</body>
</html>