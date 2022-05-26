package kr.go.yeosu.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.yeosu.model.NoticeVO;

@WebServlet("/GetNoticeCtrl")
public class GetNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetNoticeCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int nno = Integer.parseInt(request.getParameter("nno"));
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from notice where nno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			rs = pstmt.executeQuery();
			//ArrayList형의 제네릭 해당VO로 객체 선언 : 해당 테이블의 정보를 저장할 리스트
			NoticeVO vo = new NoticeVO();
			if(rs.next()) {
				//레코드(튜플) 데이터를 하나씩 불러와 해당VO 객체에 저장
				vo.setNno(rs.getInt("nno"));
				vo.setNtitle(rs.getString("ntitle"));
				vo.setNconetnt(rs.getString("nconetnt"));
				vo.setNpic(rs.getString("npic"));
				vo.setNdata(rs.getString("ndata"));
				vo.setResdate(rs.getDate("resdate"));
				vo.setNname(rs.getString("nname"));
				vo.setViewcnt(rs.getInt("viewcnt"));
			}
			request.setAttribute("vo", vo); //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("notice.jsp"); //보내질 곳을 지정하기
			view.forward(request, response);//지정된 곳에 저장된 요청 데이터를 전송하기
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}