<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="javascript/facebook.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<script src="js/jquery.autocomplete.js"></script>
  
<link href="css/facebook.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
<link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/facebook.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

#background
{
background-color:#4867aa;
padding-bottom: 25px;
container-fluid
 margin-left: 0;

 
}
#Searchbox
{
	padding-bottom: 10px;
	margin-top: 15px;
	
}

#abcd
{
	background-color:#dfe3ee;
}
#xyz{
	
	margin-top: 135px;
	
	
}

#box
{
	background-color:#ffffff;
	width:700px;
	height:350px;
	margin-left: 350px;
    margin-top: 150px;
	
}
#txtbox
{
	border:none;
	left:20px;
} 


#addbx
{
margin-left: 955px;
margin-top: -55px;
}


#logo
{
margin-left:100px;
}
#form
{
position: fixed;
margin-left:850px;
margin-top:-100px;
}
#img
{
 position: fixed;
 margin-left:50px;
 margin-top: 25px;
}

#regform
{
  position:fixed;
  margin-left:850px;
  margin-top:5px;
}
.container
{
	width:1700px;
	

}
.p
{
	color: red;
	position: absolute;
	top: 50px;
	margin: 7px;
}
.s
{
	color: red;
	position: absolute;
	top: 50px;
	margin: 7px;
	right:130;

}
#face
{
color: blue;
font-size: 20px;
position: absolute;
margin-top: 15px;
margin-left: -30px;
}
{
	
	color: red;
position: absolute;
left: -140px;
}
#span
{
 position: absolute;
margin-left: -25px;
margin-top: 25px;
}



.ph
{
	color: red;
position: absolute;
left: -130px;
}
.pa
{
	color: red;
position: absolute;
left: -130px;
}
.e
{
	color: red;
position: absolute;
left: -110px
}
.dys
{
	color:red;
	Left:-120;
}
.fm
{
	color:red;
}
#butn
{
margin-top: 10px;
}

</style>
<script>

		 $(document).ready(function() {
		        $(function() {
		                $("#Searchbox").autocomplete({     
		                source : function(request, response) {
		                $.ajax({
		                        url : "/spring2/search",
		                        type : "GET",
		                        data : {
		                        	Searchbox : request.term
		                        },
		                        dataType : "json",
		                        success : function(data) {
		                                response(data);
		                        }
		                });
		        }
		});
		});
		});
		 
	</script>



</head>
<body id=abcd>
<div id="background">

<div class="row">
<div  class="col-md-1">
</div>
<div  class="col-md-5" >
<input type="button" value="f" id="face" >
<input type="text" id="Searchbox"  placeholder="Search Facebook" size="70" name="Searchbox" >
 <span class="glyphicon glyphicon-search" id="span"></span> 
  </div>
  <%
  System.out.println(session.getAttribute("userid"));
  System.out.println(session.getAttribute("UserName"));
 System.out.println(session.getAttribute("LastName"));
 System.out.println(session.getAttribute("image"));
 
   %>

<div  class="col-md-2"><br>
<img src= "image/${image}" vertical-align= "middle" width= "20%"> ${UserName} ${LastName} 
</div>
<div  class="col-md-2">
<input type="button" name="Logout" value="Logout" id="Logout">
</div>
</div>
</div>
<div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div>

<div class="row">

<div class=" col-md-2">
 <img src= "image/${image}" vertical-align= "left" width= "20%"> ${UserName} ${LastName}  <br><br>
 
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff;margin-left: 10px; " >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="addrequest" >Edit Profile</a>
 <br>

<button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff;  margin-left: 10px;" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="unfrnd" >Apporve Friends</a>
 <br>
<button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff;  margin-left: 10px;" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="unfrnd" >UnFriends</a>
 
 </div>

 <div class=" col-md-1"></div>
 
 <div class=" col-md-4">
 <form:form name="search" method="Post" action="/spring2/confirmrequest" modelAttribute="SearchBean " id="srchform" >
 <label>Friend Requests</label>
 <hr>
    <c:if test="${not empty lists}"> 
       <c:forEach var="listValue" items="${lists}">
   <div class=" row" style="background-color:#ffffff; ">
 <input type="hidden" name="user2id"  value="${listValue.getUserid()}" >
  
   <div class=" col-md-3">
 	 <img  width= "30%" hight="15" src="<c:url value="image/${listValue. getListimage()}"/>"/>
 	</div>
 	<div class=" col-md-4">
	<label>${listValue.getListusername()} ${listValue.getListlastname()}</label></div>
	<div class=" col-md-2">
	<a href="/spring2/confm?id=<c:out value="${listValue.getUserid()}"/>" style="color:grey;">confirm</a></div>
 <div class=" col-md-3">
  <a href="/spring2/delete?id=<c:out value="${listValue.getUserid()}"/>" style="color:grey;"> Delete Request</a> 
  
  
   </div>
   </div>
   </c:forEach>
  </c:if>
  
 </form:form>
  
 </div> 
 

<div class=" col-md-3" style="background-color:#ffffff; margin-left: 10px;">
 <label>TRENDING</label>
 <a href="#">
          <span class="glyphicon glyphicon-screenshot"></span>
        </a>
        <span class="glyphicon glyphicon-gift"></span>
         <span class="glyphicon glyphicon-edit"></span>
          <span class="glyphicon glyphicon-picture"></span>
           <span class="glyphicon glyphicon-facetime-video"></span>
 </div>

</div>
<div class="row">
<div class=" col-md-4"></div>
<div class=" col-md-3">
 <ul class="pagination">
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
  </ul>
</div>
</div>

 </body>
 </html>





