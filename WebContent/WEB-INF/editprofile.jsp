<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="javascript/facebook.js"></script>


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
#texbox1
{
	margin: 0px;
width: 500px;
height: 141px;
position: absolute;
margin-left: -69px;
margin-top: 10px;
border:none;
	left:20px;
}
#texbox2
{
border:none;
	left:20px;
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
.test {
    background-color: transparent;
    border: 0px solid;
    height: 20px;
    width: 250px;
   
}
.one_opacity_0 {
opacity: 0;
height: 0;
width: 1px;
float: left;
}
.the{
    background-color: transparent;
    border: 0px solid;
    height: 20px;
    width: 100px;
   
}

</style>
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
 
  <div  class="col-md-2"><br>
<img src= "image/${image}"vertical-align= "middle" width= "20%">  ${UserName} ${LastName} 
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
 <div class=" col-md-3">
 <img src= "image/${image}" vertical-align= "left" width= "20%">  ${UserName} ${LastName}  
 <br>
  <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff;margin-left: 10px; " >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >Edit Profile</a>
 <br>
  <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff;  margin-left: 10px;" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >News Feed</a>
 <br>
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff;  margin-left: 10px;" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >Status Updates</a>
 </div>
 
 <div class=" col-md-6">
 <form:form name="edit" method="Post" action="/spring2/updateprofile" modelAttribute="Editbeans" id="edit">
  <div class=" row" style="background-color:#ffffff; ">
  <div class="col-md-8">
    <img  width= "15%" src="<c:url value="image/${image}"/>"/> 
    <input type="text" name="fname" id="fname" class="the" value="${firstname}" maxlength="10"> <input type="text" name="lname" id="lname" class="the" value="${lastname}" maxlength="10">
    </div>
     <div class="col-md-4"></div>
    <div class="col-md-4">
      <div class = 'one_opacity_0'>
                    <input type="file"  label = "add" id="files" name="files">
                </div> <button type="button" class="btn btn-default btn-sm" id="login">
          <span class="glyphicon glyphicon-camera"></span>
 
   </button>
                <a><span> image </span></a>
                
           
   <div id="dvPreview">
     <img  width= "70%" hight="50" src="<c:url value="image/${image}"/>"/>
     </div >
    </div>
     <div class="row">
     <div class="col-md-4">
   <p><b> CONTACT INFORMATIONS</b></p>   
    </div></div>
    <div class="row">
    <div class="col-md-4">
   <p> Mobile Number:</p>             
    </div>
    <div class="col-md-4">
   <input type="text" name="number" id="number" class="test" value="${phone}" maxlength="20">
    </div>
    </div>
     <div class="row">
    <div class="col-md-4">
   <p> Location:</p>
    </div>
    <div class="col-md-8">
    <div class="col-md-2">
    <select>
      <option value="">selectcountry</option>
    <c:forEach items="${countryList}" var="country">
<option value="${country.getCountry()}">${country.getCountry()}</option>
</c:forEach> 
</select>
 </div>
 <div class="col-md-1"></div>
 
 <div class="col-md-2">
    <div class="col-md-2">
    <select id="country">
     <option value="">selectstate</option>
    <c:forEach items="${statelist}" var="state">
<option value="${state.getState()}">${state.getState()}</option>
</c:forEach> 
</select>
 </div>
 </div>
 <div class="col-md-1"></div>
 <div class="col-md-2">
    <input type="text" name="location" id="location" class="the" value="" maxlength="10">
 </div>
    </div>
    </div>
     <div class="row">
    <div class="col-md-4">
   <p> Email: 
   <br> Basic Information</p>  
   </div>
   <div class="col-md-4">
    <input type="text" name="email" id="email" class="test" value="${email}" maxlength="50">
   </div> 
    </div>
    <div class="row">
    <div class="col-md-4">
   <p> Birth Date:</p>
    </div>
   <div class="col-md-4">
    <input type="text" name="date" id="date" class="test" value="${date}" maxlength="10">
    </div>
    <div class="col-md-3">
    <a href="#"> <span class="glyphicon glyphicon-edit"></span>Edit</a> 
    </div>
    </div>
     <div class="row">
    <div class="col-md-4">
   <p> Birth month:</p>
    </div>
    <div class="col-md-4">
     <input type="text" name="month" id="month" class="test" value="${month}" maxlength="10">
  
    </div>
    
    </div>
    <div class="row">
    <div class="col-md-4">
   <p> Birth Year:</p>
    </div>
    <div class="col-md-4">
     <input type="text" name="year" id="year" class="test" value="${year}" maxlength="10">
  
    </div>
    
    </div>
    <div class="row">
  <div class="col-md-4">
   <p> Gender:</p>
    </div>
    <div class="col-md-4">
   ${gender}
    </div>
    </div>
    <div class="row">
     <div class="col-md-4">
   <p> Language:</p>
    </div>
     <div class="col-md-4">
     <input type="text" name="language" id="language" class="test" value="${language}" maxlength="50" required ></div> 
    <div class="col-md-4">
    <input type="submit" value="save" class="btn btn-primary" name="save" id="save">
    </div>
    </div>
 </div>
 </form:form>
 </div> 
</div>
</body>
</html>