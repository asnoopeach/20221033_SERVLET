

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
    <%@ page contentType = "text/html; charset=utf-8" %>
 <nav class="navbar navbar-expand  navbar-dark bg-dark">
      <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          카테고리
          </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">coffee beans</a>
        <a class="dropdown-item" href="#">coffee grinder</a>
        <a class="dropdown-item" href="#">coffee extractor</a>
        <a class="dropdown-item" href="#">Espresso machine</a>
     </div>
   </div>

    <div>
        <img src="image\logo.1.jpg" class="img-fluid" alt="main_image">
    </div>

     <div class="container">
         <div class="navbar-header">
            <a class="navbar-brand" href="./index.jsp">SALE</a>
            <a class="navbar-brand" href="./index.jsp">로그인</a>
            <a class="navbar-brand" href="./index.jsp">회원가입</a>
            <a class="navbar-brand" href="./index.jsp">주문문의</a>
         </div>
      </div>
     </nav>

</body>
</html>

	