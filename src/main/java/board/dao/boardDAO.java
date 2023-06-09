package board.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	public int boardwrite(boardDTO boarddto) {
		int su = 0;
		try {
			String sql="insert into board values(seq_board.nextval,?,?,?,?,0,sysdate)";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,boarddto.getId());
			pstmt.setString(2,boarddto.getName());
			pstmt.setString(3,boarddto.getSubject());
			pstmt.setString(4,boarddto.getContent());
			su = pstmt.executeUpdate();
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(con,pstmt,res);
		}
		return su;
	} 
	
	//글목록 
	public ArrayList<boardDTO> boardList(int start, int last) {
		ArrayList<boardDTO> list = new ArrayList();
		boardDTO boarddto = null;
	
		try {
			String sql = "select seq, id, name, subject, content, hit, to_char(logdate, 'YYYY.MM.DD') as logdate from "
                    + "(select rownum rn, tt. * from "
                    + "(select * from board order by seq desc) tt) "
                    + "where rn>=? and rn<=?";
			con = ds.getConnection();
    		pstmt = con.prepareStatement(sql);
    		pstmt.setInt(1, start);
    		pstmt.setInt(2, last);
    		res = pstmt.executeQuery();
    		
    		// 여러값을 가져올때는 while
    		while(res.next()) {
    			boarddto = new boardDTO();
    			boarddto.setSeq(res.getInt("seq"));
    			boarddto.setId(res.getString("id"));
    			boarddto.setName(res.getString("name"));
    			boarddto.setSubject(res.getString("subject"));
    			boarddto.setContent(res.getString("content"));
    			boarddto.setHit(res.getInt("hit"));
    			boarddto.setLogdate(res.getDate("logdate"));
    			list.add(boarddto);
    		}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(con, pstmt, res);
		}
		return list;
	}
	
	
	// 전체 페이지의 개수 
	public int getTotalArticle() {
		int totalArticle = 0;
    	try {
    		String sql = "select count(*) from board";
    		con = ds.getConnection();
    		pstmt = con.prepareStatement(sql);
    		res = pstmt.executeQuery();
    		
    		if(res.next()) {
    			totalArticle = res.getInt(1); //전체글갯수 
    		}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(con,pstmt,res);			
		}	
    	return totalArticle; 
	}
	
}
