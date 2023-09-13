

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
	
   <%@ page contentType = "text/html; charset=utf-8" %>
    <div class = "jumbotron">
            <div class = "container">
                <h1 class = "display-3">
                    <%! String greeting = "상단 페이지 : 쇼핑몰 메인화면 문자열 홍길동님";
   String tagline = "하단 페이지 : 확인";%>
                    <%=greeting%>
                </h1>
            </div>
    </div>
    <div class ="container">
        <div class = "text-center">
            <h3>
                <%=tagline%>
            </h3>
        </div>
        <hr style ="">
     </div>
</body>
</html>

	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>


