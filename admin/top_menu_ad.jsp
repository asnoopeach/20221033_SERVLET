

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
    <%@ page contentType = "text/html; charset=utf-8" %>
    <div>
        <img src="image\uggro.png" class="img-fluid" alt="main_image">
    </div>
     <nav class="navbar navbar-expand  navbar-light bg-light">
      <div class="dropdown">
          <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          MENU
          </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">NEW ARRIVALS</a>
        <a class="dropdown-item" href="#">BEST</a>
        <a class="dropdown-item" href="#">OUTLET</a>
        <a class="dropdown-item" href="#">COLLECTION</a>
     </div>
   </div>
    

     <div class="container">
         <div class="navbar-header">
             <a class="navbar-brand" href="./index.jsp">메뉴바 : 홈페이지</a>
            <a class="navbar-brand" href="./index.jsp">회원 보기/추가/수정/삭제</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="index_ad.jsp">수정/삭제</a>
            <a class="navbar-brand" href="../index.jsp">일반모드</a>

         </div>
      </div>
     </nav>

</body>
</html>

	