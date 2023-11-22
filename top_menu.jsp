<%@ page contentType = "text/html; charset=utf-8" %>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
    
    <div>
        <img src="image\uggro.png" class="img-fluid" alt="main_image">
    </div>
    <div class="navbar-header">
     <nav class="navbar navbar-expand  navbar-light bg-light">
         <div class="container">
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
   
    
            <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="./index.jsp">WOMEN</a>
            <a class="navbar-brand" href="./index.jsp">MEN</a>
            <a class="navbar-brand" href="./index.jsp">KIDS</a>
            <a class="navbar-brand" href="./index.jsp">SALE</a>
            <a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>

          </div>
         </div>
          </nav>
         </div>
    

</body>
</html>

	