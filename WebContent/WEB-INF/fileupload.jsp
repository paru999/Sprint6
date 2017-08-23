<!DOCTYPE html>
<html>
<head>

<!-- <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.form.js"></script>
<script>
$(document).ready(function() 
{ 
 $('form').ajaxForm(function() 
 {
  alert("Uploaded SuccessFully");
 }); 
});

function preview_image() 
{
 var total_file=document.getElementById("upload_file").files.length;
 for(var i=0;i<total_file;i++)
 {
  $('#image_preview').append("<img src='"+URL.createObjectURL(event.target.files[i])+"'><br>");
 }
}
</script>
</head>
<body>
<div id="wrapper">
 <form action="upload_file.php" method="post" enctype="multipart/form-data">
  <input type="file" id="upload_file" name="upload_file[]" onchange="preview_image();" multiple/>
  <input type="submit" name='submit_image' value="Upload Image"/>
 </form>
 <div id="image_preview"></div></div>
 -->

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
<body>
    
        <form style="margin-bottom: 20px">
            <input type="file" id="files" multiple style="margin-bottom: 20px"/><br/>
           
      <input id="uploadButton" type="button" value="Upload" style="margin-top: 20px"/>
        </form>
        <div id="dvPreview" style='height: 100px; border: 2px solid #ccc; overflow: auto'></div>
       

            <>
            </div>
   
  
</body>
</html>