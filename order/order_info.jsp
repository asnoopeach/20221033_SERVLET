serv<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>배송 정보</title>
</head>
<body>
	<jsp:include page="../top_menu.jsp" />
	<div class="jumbotron">
	   <div class="container">
		<h1 class="display-3">배송 정보</h1>
	   </div>
	</div>
	<div class="container">
	   <form action="order_info_process.jsp" class="form-horizontal" method="post">
	     <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
	     <div class="form-group row">
	       <label class="col-sm-2">성명</label>
	          <div class="col-sm-3">
	      	<input name="name" type="text" class="form-control" />
	          </div>
	    </div>
<div class="form-group row">
	<label class="col-sm-2">배송일</label>
	<div class="col-sm-3">
		<input name="shippingDate" type="text" class="form-control" />(yyyy/mm/dd)
	</div>
	  </div>
	 <div class="form-group row">
	   <label class="col-sm-2">국가명</label>
	     <div class="col-sm-3">
             
             <select  name="country" class="form-control">
                    <option value=""></option>
                    <option value="한국">한국</option>
                    <option value="중국">중국</option>
                    <option value="일본">일본</option>
                    <option value="미국">미국</option>
            </select>
		
	    </div>
	 </div>
	<div class="form-group row">
	   <label class="col-sm-2">우편번호</label>
	     <div class="col-sm-3">
	 	<input name="zipCode" type="text" class="form-control" />
        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
        
        </div>
	</div>
	<div class="form-group row">
	   <label class="col-sm-2">주소</label>
	     <div class="col-sm-5">
		<input name="addressName" type="text" class="form-control" />
	     </div>
	</div>
	<div class="form-group row">
	   <div class="col-sm-offset-2 col-sm-10 ">
	     <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
		<input type="submit" class="btn btn-primary" value="등록" />
		<a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
	   </div>
	</div>
  </form>
  </div>
</body>
</html>