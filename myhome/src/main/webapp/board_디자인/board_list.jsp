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
<%@include file="/include/common.jsp" %>
<%@include file="/include/header.jsp" %>


<div class="container mt-5" id="table">
  <h2>Hoverable Dark Table</h2>
  <p>The .table-hover class adds a hover effect (grey background color) on table rows:</p>
  <div class="input-group mb-3">
   <button type="button" class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown">
    Dropdown button
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" aria-current="page" href="#">제목</a></li>
    <li><a class="dropdown-item" href="#">작성자</a></li>
    <li><a class="dropdown-item" href="#">작성일</a></li>
  </ul>
    <input type="text" class="form-control" placeholder="Search">
    <button class="btn btn-dark" type="submit">Search</button> 
  </div>         
  <table class="table table-hover">
  		<colgroup>
    	 <col width="8%">
    	 <col width="*%">
    	 <col width="12%">
    	 <col width="12%">
    	 <col width="8%">
    	</colgroup>
    <thead class="table-dark">	
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td><a href="${context}/board/board_view.jsp?id=1">강아지 자랑</a></td>
        <td>홍길동</td>
         <td>2022.05.30</td>
          <td>23</td>
      </tr>
     
      <tr>
        <td>2</td>
        <td><a href="${context}/board/board_view.jsp?id=1">강아지 자랑</a></td>
        <td>홍길동</td>
         <td>2022.05.30</td>
          <td>23</td>
      </tr>
      
       <tr>
        <td>3</td>
        <td><a href="${context}/board/board_view.jsp?id=1">강아지 자랑</a></td>
        <td>홍길동</td>
         <td>2022.05.30</td>
          <td>23</td>
      </tr>
      
    </tbody>
  </table>
</div>
<div class="container mt-10" style="margin-top: 50px">         
  <ul class="pagination justify-content-center">
    <li class="page-item"><a class="page-link text-muted" href="javascript:void(0);">Previous</a></li>
    <li class="page-item"><a class="page-link text-muted" href="javascript:void(0);">1</a></li>
    <li class="page-item"><a class="page-link text-muted" href="javascript:void(0);">2</a></li>
    <li class="page-item"><a class="page-link text-muted" href="javascript:void(0);">Next</a></li>
  </ul>
</div>

<div class="container d-md-flex justify-content-md-end">
<a href="${context}/board/board_write.jsp">
 <button type="button" class="btn btn-dark">글쓰기</button>
 </a>
</div>

</body>
</html>