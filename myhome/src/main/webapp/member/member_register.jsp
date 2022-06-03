<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div class="container mt-3">
  <h2>회원가입</h2>
  <form id="myform">
  
   <input type="hidden" name="idcheckyn" id="idcheckyn" value="N" />
   
    <div class="mb-3 mt-3">
      <label for="userid">아이디:</label>
      <div class="input-group">
      	<input type="text" class="form-control" id="userid" placeholder="Enter userid" name="userid">
        <button class="btn btn-primary" type="button" id="btnIdCheck">중복체크</button>
       </div>
    </div>
    
    <div class="mb-3">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    
    <div class="mb-3">
      <label for="pwd2">비밀번호 확인:</label>
      <input type="password" class="form-control" id="pwd2" placeholder="Enter password" name="pwd2">
    </div>
    
    <div class="mb-3">
      <label for="username">이름:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter name" name="username">
    </div>
    
     <div class="mb-3">
      <label for="phone">전화번호:</label>
      <input type="text" class="form-control" id="phone" placeholder="Enter phone number" name="phone">
    </div>
    
     <div class="mb-3">
      <label for="email">이메일:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>

    <button type="button" class="btn btn-primary" id="btnSend">회원가입</button>
  </form>
</div>
	
</body>
</html>
<script>
$(document).ready(()=>{
	
	
	$("#btnSend").click(()=>{
		if($("#idcheckyn").val() == "N"){
			alert("아이디 중복체크를 하세요");
			 return false;
		}
		$.ajax({
			url:"/myhome/member",
			data:{"cmd":"insert","userid":$("#userid").val(), "pwd": $("#pwd").val(),"username": $("#username").val(),
					"phone": $("#phone").val(), "email": $("#email").val()	
			},
			dataType: "json",
			method: "post"
			
		})
		.done((data)=>{})
		.fail((jx, error)=>{
			console.log(jx, error)
		})
	});
	
	
	$("#btnIdCheck").click( () =>{
		$.ajax({
			url: "/myhome/member",
			data: {"cmd":"idcheck", "userid":$("#userid").val()},
			dataType : "json",
			method: "post"
		})
		.done((result)=>{
			if(result.check=="Y"){
				alert("사용가능한 아이디입니다.");
				$("#idcheckyn").val("Y");
				$("#userid").prop("readonly", "true");
			} else {
				alert("이미 사용중인 아이디입니다.");
				$("#idcheckyn").val("N");
			}
		})
		.fail((jx, error)=>{
			console.log(jx, error)
		});
	})
	
	
	
});



</script>





