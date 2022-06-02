<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.goodee.board.*" %>    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    
    
    
    
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>


<%@include file="/include/header.jsp" %>
<%@include file="/include/common.jsp" %>


<div class="container mt-5" id="table">
  <h2>게시판</h2>
  <p>내용을 작성하세요</p>
  
  <%BoardDto dto = (BoardDto)request.getAttribute("boardDto"); %>
  
  <div class="container mt-3">
        
  <table class="table table-hover">
  <colgroup>
   <col width="20%">
   <col width="#">
  </colgroup>

    <tbody>
     <tr class="table-secondary">
        <th>제목</th>
        <td colspan="5"><%=dto.getTitle()%></td>
      </tr>
      <tr>
        <th>작성자</th>
        <td><%=dto.getWriter()%></td>
        <th>작성일</th>
        <td><%=dto.getWdate()%></td>
        <th>조회수</th>
        <td><%=dto.getHit()%></td>
      </tr>
      <tr>
        <th colspan="6" class="table-secondary">내용</th>
      </tr>
      <tr>  
        <td colspan="6">
        	<%=dto.getContents()%>
        </td>
      </tr>

    </tbody>
  </table>

  </div>
</div>

<div class="container d-md-flex justify-content-md-end">
<a href="${context}/board.do"> <button type="button" class="btn btn-dark">목록</button></a>
</div>





  
</body>
  <script>
      $('#contents').summernote({
        placeholder: '내용을 입력하세요',
        tabsize: 2,
        height: 300
      });
    </script>
</html>