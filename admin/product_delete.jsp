<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="../js/validation.js"></script>
<title>상품 삭제</title>

<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "product_delete.jsp?edit=delete&id=" + id;
		else
			return;
	}
</script>

<%
	String edit = request.getParameter("edit");
	
	if (edit != null && edit.equals("delete")) { // "delete" 모드인 경우
		String id = request.getParameter("id");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ggouppang_20221033?characterEncoding=utf8", "root", "123123");

			// 상품 삭제 쿼리
			String deleteQuery = "DELETE FROM product WHERE p_id = ?";
			pstmt = conn.prepareStatement(deleteQuery);
			pstmt.setString(1, id);

			int rowsAffected = pstmt.executeUpdate();
			if (rowsAffected > 0) {
				// 삭제 성공
				// 상품 삭제 후 자신을 다시 호출하여 업데이트된 목록을 보여줌
				response.sendRedirect("product_delete.jsp");
			} else {
				// 삭제 실패
				// 실패 처리를 위한 코드 작성
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 예외 처리를 위한 코드 작성
		} finally {
			// DB 연결 및 객체 해제
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				// 예외 처리를 위한 코드 작성
			}
		}
	}
%>
</head>
<body>
	<jsp:include page="top_menu_ad.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 삭제</h1>
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
			<%@ include file="../db/db_conn.jsp"%>
			<%
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					String productId = rs.getString("p_id");
					String productName = rs.getString("p_name");
					String productDescription = rs.getString("p_description");
					String productUnitPrice = rs.getString("p_UnitPrice");
					String productFileName = rs.getString("p_fileName");
			%>
			<tr>
				<td><%=productId%></td>
				<td><%=productName%></td>
				<td><%=productDescription%></td>
				<td><%=productUnitPrice%></td>
				<td><img src="../image/product/<%=rs.getString("p_fileName")%>" width="50" height="50"></td>
				<td><input type="button" class="btn btn-danger" value="삭제" onclick="deleteConfirm('<%=productId%>')"></td>
			</tr>
			<%
				}
				rs.close();
				pstmt.close();
				conn.close();
			%>
		</div>
	</div>
</body>
</html>