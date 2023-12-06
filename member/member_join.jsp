<%@ page contentType="text/html;charset=utf-8"%>

<html> 
    <head> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 
        <title>회원 가입</title> 
    </head> 
    <body> 
        <jsp:include page="../top_menu.jsp" /> 
        <div class="jumbotron"> 
            <div class="container"> 
                <h1 class="display-3">회원 가입</h1> 
            </div> 
        </div> 
        <div class="container"> 
            <form id="joinForm" action="./member_join_process.jsp" class="form-horizontal" method="post" > 
                <div class="form-group row"> 
                    <label class="col-sm-2">아이디</label> 
                    <div class="col-sm-3"> 
                        <input type="text" id="id" name="id" class="form-control"> 
                    </div> 
                </div> 
                <div class="form-group row"> 
                    <label class="col-sm-2">패스워드</label> 
                    <div class="col-sm-3"> 
                        <input type="password" id="password" name="password" class="form-control"> 
                    </div> 
                </div> 
                <div class="form-group row"> 
                    <label class="col-sm-2">패스워드 재입력</label> 
                    <div class="col-sm-3"> 
                        <input type="password" id="password2" name="password2" class="form-control"> 
                    </div> 
                </div> 
                <div class="form-group row"> 
                    <label class="col-sm-2">이름</label> 
                    <div class="col-sm-3"> <input type="text" id="name" name="name" class="form-control"> 
                    </div> 
                </div>

        <div class="form-group row">
            <label class="col-sm-2">성별</label>
            <div class="col-sm-3">
                <select id="gender" name="gender" class="form-control">
                    <option value=""></option>
                    <option value="남">남</option>
                    <option value="여">여</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">메일주소</label>
            <div class="col-sm-3">
                <input type="text" name="mail" placeholder="example@gmail.com" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">폰번호</label>
            <div class="col-sm-3">
                <input type="text" id="phone" name="phone" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">주소</label>
            <div class="col-sm-3">
                <input type="text" id="address" name="address" class="form-control">
            </div>
        </div>
        
        <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10 ">
                <input type ="button"  id="joinButton" class="btn btn-primary" value="가입" onclick ="event()">
                <a href="../login/login_user.jsp" class="btn btn-sm btn-success pull-right">로그인(이전페이지)</a>
            </div>
        </div>
    </form>
</div>

<script>
$(document).ready(function() {
    // 회원 가입 버튼 클릭 시 form 데이터를 submit
    $("#joinButton").click(function(event) {
        event.preventDefault(); // 기본 동작 중단

        // 필수 입력 필드 유효성 검사
        var id = $("#id").val();
        var password = $("#password").val();
        var password2 = $("#password2").val();
        var name = $("#name").val();

        if (id === '' || password === '' || password2 === '' || name === '') {
            alert("필수 입력 필드를 모두 입력해주세요.");
            return;
        }

        // 패스워드 일치 검사
        if (password !== password2) {
            alert("패스워드가 일치하지 않습니다.");
            return;
        }

        // form 데이터를 서버로 전송
        $("#joinForm").submit();
    });
});
</script> 
</body> 
</html>