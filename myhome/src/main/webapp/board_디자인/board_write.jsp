<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <div class="container mt-3">
        
  <table class="table table-hover">
  <colgroup>
   <col width="20%">
   <col width="#">
  </colgroup>

    <tbody>
     <tr>
        <td>제목</td>
        <td>
        	<div class="mb-3 mt-3" style="margin-top: 15px">
				 <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요" name="title">
  			</div>
        </td>
      </tr>
      <tr>
        <td>작성자</td>
        <td>
			<div class="mb-3 mt-3" style="margin-top: 15px">
				 <input type="text" class="form-control" id="writer" placeholder="작성자를 입력하세요" name="writer">
  			</div>        
        </td>
      </tr>
      <tr>
        <td>내용</td>
        <td>
        	<div id="contents"></div>
        </td>
      </tr>

    </tbody>
  </table>

  
</div>
</div>

<div class="container d-md-flex justify-content-md-end">
<a href="${context}/board/board_list.jsp"> <button type="button" class="btn btn-dark">목록</button></a> 
 <button type="button" class="btn btn-dark" style="margin-left: 10px">저장</button>
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