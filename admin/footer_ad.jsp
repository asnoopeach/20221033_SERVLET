
<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
	
<footer class = "container">
            <p>
                &copy; 대표: 홍재원, 고유번호 : 20221033, 연락처 : asnoopeach@sungkyul.ac.kr <br>
            
            <%
                Date day = new java.util.Date();
                String am_pm;
                int hour = day.getHours();
                int minute = day.getMinutes();
                int second = day.getSeconds();
                if (hour / 12 == 0) {
                    am_pm = "AM";
                } else {
                    am_pm = "PM";
                    hour = hour - 12;
                }
                String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                out.println("현재 접속  시각: " + CT + "\n");
            %>
                </p>
 </footer>
</body>
</html>


