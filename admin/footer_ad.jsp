
<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Date"%>
<%@ page import="example.*" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
	
 <footer class="container">
     <p> <br> &copy; 쇼핑몰 대표 : 홍재원, 고유번호 : 20221033, 연락처 : asnoopeach02@naver.com <br> 
        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
	
 </footer>
</body>
</html>


