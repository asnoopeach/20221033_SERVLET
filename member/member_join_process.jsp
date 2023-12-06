<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@ include file="../db/db_conn.jsp" %>

<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String password = request.getParameter("password");
String password2 = request.getParameter("password2");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String mail = request.getParameter("mail");
String phone = request.getParameter("phone");
String address = request.getParameter("address");

// 현재 날짜/시간 구하기
//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//String regist_day = dateFormat.format(new Date());

//Connection conn = null;
//PreparedStatement pstmt = null;


      
try {

    
   // Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ggouppang_20221033?characterEncoding=utf8", "root", "123123"); // 데이터베이스 연결 정보를 수정해야 합니다.

    // 회원 정보 삽입 쿼리문
    String sql = "INSERT INTO member (id, password, password2, name, gender, mail, phone, address, regist_day) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    pstmt.setString(3, password2);
    pstmt.setString(4, name);
    pstmt.setString(5, gender);
    pstmt.setString(6, mail);
    pstmt.setString(7, phone);
    pstmt.setString(8, address);
    
     java.util.Date now = new java.util.Date();
        pstmt.setString(9, now.toString());
    
 
        // SQL 쿼리 실행
        pstmt.executeUpdate();

        // 자원 해제
        pstmt.close();

        // 회원 가입이 성공적으로 완료되었다는 메시지와 함께 로그인 페이지로 리다이렉트합니다.
        response.sendRedirect("../login_user.jsp?success=true");
    } catch (Exception e) {
        e.printStackTrace();
        // 회원 가입 중 오류가 발생했을 경우에 대한 처리를 여기에 추가할 수 있습니다.
    } finally {
        // 연결된 데이터베이스 자원을 해제합니다.
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
%>

<script>
    alert("회원 가입이 완료되었습니다.");
    location.href = "../index.jsp";
</script>