<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%> <!--패키지 연동 -->
<%@ page import="dao.ProductRepository"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>

    <!--<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
-->
   <%! String greeting = "UGGRO 공식 사이트";
   String tagline = "Welcome!";%>
    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
    <%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
 
    <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">New Arrivals</h5>
                        <p class="card-text">source : UGG.com</p>
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3> <!--상품이름 -->
				<p><%=product.getDescription()%> <!--상품정보-->
				<p><%=product.getUnitPrice()%>원  <!--상품가격-->
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-light" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				} //반복문 끝
			%>
		</div>
		<hr>
	</div>


    
    <div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">Tazz UGGbraid</a>
      <a href="#" class="list-group-item list-group-item-action">Classic Mini</a>
      <a href="#" class="list-group-item list-group-item-action">Brooklyn Chelsea</a>
      <a href="#" class="list-group-item list-group-item-action">Tasman Slipper</a>
      
    </div>

    
    <div class ="con tainer">
        <div class = "text-center">
            <h3>
                <%=tagline%>
            </h3>
        </div>
        <hr style ="">
     </div>
    </div>
</body>
</html>

	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>


