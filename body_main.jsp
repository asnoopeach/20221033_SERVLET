

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
    <%@ page contentType="text/html; charset=utf-8"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="dto.Product"%>
    <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

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
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
    <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="image/product//<%=product.getProductId()%>.png" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">New Arrivals</h5>
                        <p class="card-text">source : UGG.com</p>
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>

        
     <div class="card bg-dark text-white">
    <img src="image/mainboots_8_1.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">New Arrivals</h5>
    <p class="card-text">source : UGG.com</p>
      </div>
        
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
    
</body>
</html>

	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>


