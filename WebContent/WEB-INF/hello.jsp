<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/designs.css">
</head>
<script src="http://code.jquery.com/jquery.js"></script><script 
    src="javascripts/bootstrap.min.js"></script><script src="javascripts/hello.js"></script>


<head>
<style>

.modal {
    display: none; 
    position: fixed; 
    z-index: 1; 
    padding-top: 100px; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow: auto; 
    background-color: rgb(0,0,0); 
    background-color: rgba(0,0,0,0.4); 
}

.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 10px;
    border: 1px solid #888;
    width: 40%;
}


</style>
</head>
<body>



<button id="myBtn">Open Modal</button>
<div id="myModal" class="modal">
<div class="modal-content">
  <h3>Leave page?</h3><hr>
  <h4>You haven't saved your changes. Do you want to laeve without saving?</h4>
  <hr>
  <input type="submit" name="Stay" value="Stay on this page"> <input type="submit" name="leave" value="Leave this page" class="btn btn-primary">
 </div>
  </div>


</body>

<script>
var modal = document.getElementById('myModal');




var btn = document.getElementById("myBtn");
//alert("test1");

btn.onclick = function() {
    modal.style.display = "block";
}
span.onclick = function() {
    modal.style.display = "none";
}
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</html>





   


