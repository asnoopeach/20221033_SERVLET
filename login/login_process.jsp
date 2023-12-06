<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*" %>
<%@ include file="../db/db_conn.jsp" %>

<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("j_id");
String password = request.getParameter("j_password");
ResultSet rs = null; // ResultSet 초기화
PreparedStatement pstmt = null; // PreparedStatement 초기화

try {
    // 주어진 자격 증명을 가진 사용자가 있는지 확인하는 쿼리
    String sql = "SELECT * FROM member WHERE id = ? AND password = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    rs = pstmt.executeQuery(); // executeQuery()를 사용하도록 수정

    if (rs.next()) {
        // 주어진 자격 증명을 가진 사용자가 존재하면 성공적인 로그인 동작 수행
        // 예를 들어, 로그인한 사용자를 나타내는 세션 속성을 설정할 수 있습니다.

        // 예: 사용자 ID를 세션 속성으로 설정
        session.setAttribute("id", id);

        // 홈 페이지 또는 다른 인가된 페이지로 리디렉션
        response.sendRedirect("../index.jsp");
    } else {
        // 주어진 자격 증명을 가진 사용자가 존재하지 않으면 로그인 페이지로 다시 리디렉션하고 오류 메시지 표시
        response.sendRedirect("../login_user.jsp?error=true");
    }
} catch (Exception e) {
    e.printStackTrace();
} finally {
    // 예외 발생 여부와 관계없이 리소스를 닫기 위해 finally 블록에서 close 메서드를 호출합니다.
    try {
        if (rs != null) {
            rs.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
    } catch (SQLException ex) {
        ex.printStackTrace();
    }

    // 데이터베이스 연결 닫기
    if (conn != null) {
        try {
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
%>
