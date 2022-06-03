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
<body>

<%@include file="/include/header.jsp" %>
<%@include file="/include/common.jsp" %>


	<form class="container" style="margin-top: 30px">
	 <div class="mb-3 mt-3">
    <label for="id" class="form-label">아이디:</label>
    <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
  </div>
   <div class="mt-3">
    <label for="password" class="form-label">비밀번호:</label>
    <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
  </div>
   <div class="mt-3">
    <label for="passwordck" class="form-label">비밀번호 재입력:</label>
    <input type="password" class="form-control" id="passwordck" placeholder="Enter password" name="passwordck">
  </div>
  <div class="mt-3">
    <label for="name" class="form-label">이름:</label>
    <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
  </div>
  <div class=" mt-3">
    <label for="phone" class="form-label">전화번호:</label>
    <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
  </div>
  
  <div class=" mt-3">
    <label for="email" class="form-label">이메일:</label>
    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
  </div>
    <div class=" mt-3">
    <label for="alias" class="form-label">닉네임:</label>
    <input type="text" class="form-control" id="email" placeholder="Enter alias" name="alias">
  </div>
    <div class=" mt-3">
    <label for="adress1" class="form-label">기본주소:</label>
    <input type="text" class="form-control" id="adress1" placeholder="Enter adress" name="adress1">
  </div>
    <div class="mb-3 mt-3">
    <label for="adress2" class="form-label">상세주소:</label>
    <input type="text" class="form-control" id="adress2" placeholder="Enter adress" name="adress2">
  </div>
  
  
	<div class="container d-md-flex justify-content-md-end">
  <button type="submit" class="btn btn-dark ">회원가입</button>
  </div>
</form>

</body>
</html>