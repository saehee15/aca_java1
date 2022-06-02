<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
a {text-decoration: none; outline: none; color: #000}
a:hover, a:active {text-decoration: none; color: #000}

</style>
<body>
<%@include file="/include/header.jsp" %>
<%@include file="/include/common.jsp" %>


<div class="container" style="margin-top: 50px">
  <h2>Image Gallery</h2>
  <p>The .thumbnail class can be used to display an image gallery.</p>
  <p>The .caption class adds proper padding and a dark grey color to text inside thumbnails.</p>
  <p>Click on the images to enlarge them.</p>
  <div class="row">
 <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="./img/cat.jpg" alt="cat1" style="width:80%">
          <div class="caption">
            <p><a href="${context}/gallery/image_view.jsp">자세히보기</a></p>
          </div>
        </a>
      </div>
      </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
         <img src="./img/cat2.jpg" alt="cat2" style="width:80%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
         <img src="./img/cat3.jpg" alt="cat3" style="width:80%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
  
  
  
   <div class="row">
 <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="./img/dog.jpg" alt="dog" style="width:80%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
      </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
         <img src="./img/dog2.jpg" alt="dog2" style="width:80%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
         <img src="./img/dog3.jpg" alt="dog3" style="width:80%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
	
</body>
</html>