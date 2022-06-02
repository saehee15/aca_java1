<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.*" %>
<%@page import ="com.goodee.score.*"%>
    
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
  
  <%List<ScoreDto> scoreList = (List<ScoreDto>)request.getAttribute("scoreList");%>
        
  <table class="table table-hover">
  		<colgroup>
    	 <col width="8%">
    	 <col width="*%">
    	 <col width="12%">
    	 <col width="12%">
    	 <col width="12%">
    	 <col width="12%">
    	 <col width="12%">
    	</colgroup>
    <thead class="table-dark">	
      <tr>
        <th>id</th>
        <th>name</th>
        <th>kor</th>
        <th>eng</th>
        <th>mat</th>
        <th>total</th>
        <th>average</th>
      </tr>
    </thead>
    <tbody>
    <%for (int i=0; i<scoreList.size(); i++){ 
    	ScoreDto dto = scoreList.get(i);  
    %>
      <tr>
        <td><%=dto.getId()%></td>
        <td><a href="${context}/score.do?cmd=view&id=<%=dto.getId()%>"><%=dto.getName()%></a></td>
        <td><%=dto.getKor()%></td>
        <td><%=dto.getEng()%></td>
        <td><%=dto.getMat()%></td>
        <td><%=dto.getTotal()%></td>
        <td><%=dto.getAverage()%></td>
      </tr>
     <%} %>
     
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
<a href="${context}/score.do?cmd=write"> <%-- jsp 호출 X --%>
 <button type="button" class="btn btn-dark">글쓰기</button>
 </a>
</div>

</body>
</html>