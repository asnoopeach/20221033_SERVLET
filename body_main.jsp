<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
   
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="dto.Product"%>
    <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
    <%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

    
   <%! String greeting = "Welcome to UGGRO";
      String tagline = "UGGRO.com";%>

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
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>
<div class="col-md-3">
                       <div class="card bg-dark text-white">
                    	<img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">                    	<div class="card-img-overlay">
                    	<h5 class="card-title">New Arrivals</h5>
                    	<p class="card-text">source : UGG.com</p>
                	      </div>
	   </div>
			
		<h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_UnitPrice")%>원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-light" role="button"> 상세 정보 &raquo;></a>

			</div>
			<%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
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


