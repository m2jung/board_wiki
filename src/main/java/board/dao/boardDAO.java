package board.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import board.dto.boardDTO;

public class boardDAO {

	//연결객체
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet res;
	private DataSource ds;
	
	//DB연결 
	public boardDAO() {
		try {
			// .xml 정보를 갖는 InitialContext 객체 생성 
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	//경로 닫기 
	public void streamClose(Connection con, PreparedStatement pstmt, ResultSet res) {
		try {
			if (con != null) con.close();
			if (pstmt != null) pstmt.close();
			if (res != null) res.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	// 게시판 글쓰기
	public int write(boardDTO boarddto) {
		int su = 0;
		try {
			String sql="insert into values(board_seq.nextval,?,?,?,?)";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,boarddto.getId());
			pstmt.setString(2,boarddto.getSubject());
			pstmt.setString(3,boarddto.getContents());
			//??????????
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return su;
	} 
	
	
}
