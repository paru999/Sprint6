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
.uname
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
.lalname
{
	color: red;
position: absolute;
right: 50px;
top: 83px;

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
.upload > span{
border-bottom: 1px solid #719d2b;
cursor: pointer;
}

.one_opacity_0 {
opacity: 0;
height: 0;
width: 1px;
float: left;
}
#butn
{
margin-top: 10px;
}
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}
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
.thepost {
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
 
.content {
	 background-color: #fefefe;
    margin: auto;
    padding: 10px;
    border: 1px solid #888;
    width: 40%;
   height:65%;
}


.mark {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.mark:hover,
.mark:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.one_opacity_0 {
opacity: 0;
height: 0;
width: 1px;
float: left;
}
.addpost {
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
.post-add {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 30%;
}


.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
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
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script language="javascript" type="text/javascript">
$(function () {
    $("#files").change(function () {
        if (typeof (FileReader) != "undefined") {
            var dvPreview = $("#dvPreview");
            dvPreview.html;
            var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
            $($(this)[0].files).each(function () {
                var file = $(this);
                if (regex.test(file[0].name.toLowerCase())) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var img = $("<img />");
                        img.attr("style", "height:100px;width: 100px");
                        img.attr("src", e.target.result);
                        dvPreview.append(img);
                    }
                    reader.readAsDataURL(file[0]);
                } else {
                    alert(file[0].name + " is not a valid image file.");
                    dvPreview.html("");
                    return false;
                }
            });
        } else {
            alert("This browser does not support HTML5 FileReader.");
        }
    });
});
</script>

</head>
<body id=abcd>
<header>
<div id="background">
<!-- <form:form name="search" method="Post" action="/spring2/search" modelAttribute="SearchBean " id="srchform" >  -->
<div class="row">
<%
System.out.println(session.getAttribute("userid"));
  System.out.println(session.getAttribute("UserName"));
 System.out.println(session.getAttribute("LastName"));
 System.out.println(session.getAttribute("image"));
 
   %>

<div  class="col-md-1">
</div>
<div  class="col-md-5" >
<input type="text" id="Searchbox"  placeholder="Search Facebook" size="70" name="Searchbox" >
 <span class="glyphicon glyphicon-search" id="span"></span> 
   
   <a href="addrequest">see more</a> 
</div>

<div  class="col-md-2"><br>
<img src= image/${image} vertical-align= "middle" width= "25%"> ${UserName} ${LastName}
</div>
<div  class="col-md-2">

<button type="submit" class="btn btn-primary" style="margin-top: 25px;">Home</button>
</div>

<div class="col-md-2" >
<div class="dropdown">
  <span class="glyphicon glyphicon-triangle-bottom" style="margin-top: 25px;"></span>
  <div class="dropdown-content">
   <a href="#">use facebook as:</a><br>
    <div class = 'one_opacity_0'>
 <input type="submit"  id="addbox" name="addbox">
 </div>
  <a><span>Apply for advertisement </span></a><br>
  <div id="myadd" class="addpost">
  <div class="post-add">
    <span class="close">&times;</span>
    <p>Successfully  Complited</p>
    <hr>
     <a href="okadd"  class="btn btn-primary">OK</a>
    
  </div>

</div>
<script>
var addpost = document.getElementById('myadd');
var addbtn = document.getElementById("addbox");
var close = document.getElementsByClassName("close")[0];
addbtn.onclick = function() {
    addpost.style.display = "block";
}
close.onclick = function() {
    addpost.style.display = "none";
}
window.onclick = function(event) {
    if (event.target == addpost) {
        addpost.style.display = "none";
    }
}
</script>
    <a href="admin">Admin</a><br>
   <div class = 'one_opacity_0'>
 <input type="submit" label = "myBtn" id="myBtn" name="myBtn">
 </div>
  <a><span>Logout </span></a>
 </div>
<div id="myModal" class="modal">
<div class="modal-content">
  <h3>Leave page?</h3><hr>
  <h4>You haven't saved your changes. Do you want to laeve without saving?</h4>
  <hr>
  <a href="staythispage" class="btn">Stay on this page</a> <a href="logout"  class="btn btn-primary">Leave this page</a>
  
 </div>
  </div>
</div>
</div>
<script type="text/javascript">
var modal = document.getElementById('myModal');
var btn = document.getElementById("myBtn");

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
</div>
</div>

<br>
<div class="container">
<div class="row">
  
 <div class=" col-md-2">
 <img  width= "20%" src="<c:url value="image/${image}"/>"/>  ${UserName} ${LastName}  <br><br>
 
<button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="editprfl" >Edit Profile</a>
 <br>
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >News feed</a>
 <br>
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >Status update</a>
 <br>

 Advertisement
 <br>
 <a href="admin">
          <span class="glyphicon glyphicon-signal"></span></a>
       
 <a href="admin" >Post ans Ad</a>
 </div>
<div class="col-md-4">
 <div class="row"  style="background-color:#ffffff"> 
 	<div class=" col-md-4">
 		<button type="button" class="btn btn-default btn-sm" style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
     	</button>
 	 <label>Update Status</label>
	</div>
 <div class=" col-md-4">

                <div class = 'one_opacity_0'>
 <input type="submit" label = "post" id="post" name="post">
 </div><button type="button" class="btn btn-default btn-sm" id="login" style="background-color: #ffbf80" >
          <span class="glyphicon glyphicon-picture"></span>
   </button>
  <a><span>Add Photos/Video</span></a>

 <div id="mypost" class="thepost">
 <div class="content">
    <span class="mark">&times;</span>
    <div class="row">
   <div class=" col-md-4">
 <button type="button" class="btn btn-default btn-sm"  style="background-color:#6666ff" >
 			<span class="glyphicon glyphicon-pencil">
         	</span>
  </button>
 <a href="#" >Status update</a>
 </div>
 <div class=" col-md-4">
  <form:form name="frm_image" method="POST" action="/spring2/postimage" modelAttribute="Newsfeed_Beans" id="imageost" enctype="multipart/form-data"> 
 <div class = 'one_opacity_0'>
                    <input type="file"  label = "add" id="files" name="files"  multiple/>
                </div> <button type="button" class="btn btn-default btn-sm" id="login" style="background-color: #ffbf80" >
          <span class="glyphicon glyphicon-picture"></span>
   </button>
                <a><span> Add Photos/Video </span></a>
 </div>

 </div>
 <hr>
 <div class="row">
 <div class=" col-md-5">
<img src="image/${image}" vertical-align= "left" width= "20%" hight="20">Say something about this photo 
 <textarea rows="6" cols="54" id="newsfeed" name="newsfeed" style="margin: 0px; width: 400px; height: 50px;"></textarea>
   </div>
  <div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div>
</div><div class="row">
<div class=" col-md-12"></div></div>
  </div>
   <div id="dvPreview"></div >
  <div class="row">
<div class=" col-md-8"></div>
<div class=" col-md-2">
<input type="submit" value="post" name="post" class="btn btn-primary"  ">
 </form:form>
</div>
  </div>
  
  </div>
  
 </div> 
</div>

 <div class=" col-md-4">
  <button type="button" class="btn btn-default btn-sm" style="background-color: #80ffaa">
          <span class="glyphicon glyphicon-text-color"></span> 
   </button>
 	<a href="#">Write Note</a>
 </div>	
 
 <hr>
 <div class="col-md-12" >
 </div>
  <div class=" col-md-5">
   <form:form name="frm_newsfeed" method="POST" action="/spring2/postnewsfeed" modelAttribute="Newsfeed_Beans" id="newsfeed" enctype="multipart/form-data">
<img src="image/${image}" vertical-align= "left" width= "20%" hight="20">What's On Your Mind
 <textarea rows="6" cols="54" id="newsfeed" name="newsfeed" style="margin: 0px; width: 400px; height: 50px;"></textarea>
  
 <div class="row">
<div class=" col-md-12"></div>
</div>
<div class=" col-md-2">
<input type="submit" value="post" name="imagepost" class="btn btn-primary" style="position: absolute;margin-left: 440px;margin-top: -45px; ">
</div>


 </form:form>
 </div>
 </div>
 </div>


 

<div class=" col-md-2">
 	 <select style="padding-left: 136px" > 
	 <option value="">YOUR ADS</option>
	 </select>
		 <textarea rows="" cols="35" style="background-color:#9999ff" style="margin: 0px;"></textarea>
		
 </div>
 <br>
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
</div>
	<div class="row" >
	<div  class="col-md-2"></div>
	<div class=" col-md-5">
	<c:forEach var="listValue" items="${lists}">
	<c:if test="${not empty lists}">
  <div class="row"  style="background-color:#ffffff; margin-left: 50px; ">
 	<div class=" col-md-5">
 	 <img  width= "20%" hight="15" src="<c:url value="image/${listValue.getImage()}"/>"/>  ${listValue.getFname()}  ${listValue.getLname()} 
 <br>
 just now. calicut.<span class="glyphicon glyphicon-lock"></span>.<span class="glyphicon glyphicon-triangle-bottom"></span>	<br>
<%--  ${status} --%>
${listValue.getNewsfeed()}
${listValue.getFiles()}
<hr>
 <a href="#"> <span class="glyphicon glyphicon-thumbs-up"></span></a>like   <span class="glyphicon glyphicon-comment"></span>Comment   <span class="glyphicon glyphicon-share-alt"></span>share
 <hr>
 
 	</div>
 	</div><br>
 	  </c:if>
 	</c:forEach><br>
 	 </div>
 	 
 	 </div>
 	  
 </header>
 <script>
var thepost = document.getElementById('mypost');
var add = document.getElementById("post");
var mark = document.getElementsByClassName("mark")[0]; 
add.onclick = function() {
    thepost.style.display = "block";
}
mark.onclick = function() {
    thepost.style.display = "none";
}
window.onclick = function(event) {
    if (event.target == thepost) {
        thepost.style.display = "none";
    }
}
</script>  
</body>

 </form:form>

</html>