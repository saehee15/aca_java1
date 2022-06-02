<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<%@include file="/include/common.jsp" %>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${context}/default.jsp">Logo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
        <a class="nav-link" href="${context}/member/login.jsp">로그인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">메뉴2</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">메뉴3</a>
        </li>
      </ul>
      <div class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Search">
        <button class="btn btn-primary" type="button">Search</button>
      </div>
    </div>
  </div>
</nav>