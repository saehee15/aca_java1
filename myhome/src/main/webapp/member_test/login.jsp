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


	<form class="container" style="margin-top: 50px">
  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Email:</label>
    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
  </div>
  <div class="mb-3">
    <label for="pwd" class="form-label">Password:</label>
    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
  </div>
  <div class="form-check mb-3">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox" name="remember"> Remember me
    </label>
  </div>
  <div class="container d-md-flex justify-content-md-end">
  
  <a class="nav-link btn btn-dark" href="${context}/member/join.jsp">회원가입</a>
  <a class="btn btn-dark"  style="margin-left: 10px">로그인</a>
  </div>
  
</form>
</body>
</html>