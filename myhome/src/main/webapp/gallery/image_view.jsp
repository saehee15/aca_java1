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
 .flex{
 	display: flex;
 }
</style>

<%@include file="/include/header.jsp" %>
<%@include file="/include/common.jsp" %>

<body>
	<div class="container mt-5 flex">
      <div class="col-5">
        <a href="#" target="_blank">
         <img src="./img/cat.jpg" alt="cat" style="width:90%">
        </a>
      </div>
     <div class="col-5">
    <label for="name" class="form-label" style="margin-top: 5px">name:</label>
    <input type="text" class="form-control" id="name" placeholder="회색이" name="name" readonly>
    <label for="comment" style="margin-top: 15px">특징:</label>
	<textarea class="form-control" rows="5" id="comment" name="text" readonly>
	3살, 애교가 많음!!!!!!!
	</textarea>
  </div>
    </div>
</body>
</html>