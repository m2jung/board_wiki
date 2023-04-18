package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import user.dto.userDTO;

public class userDAO {
	
	//연결객체 
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet res;
	private DataSource ds;
	
	
	//데이터베이스 연결 
	public userDAO() {
		try {
			// 1) InitialContext 객체 생성해서 설정된 context.xml정보 가져오기 
			// 2) Context객체 안의 lookup 메소드는 ConnectionPool에 설정된 name을 가져와 DataSource화 해준다.
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
	
	public int signup(userDTO userdto) {
		int su=0;
		try {
			String sql="insert into member values(?,?,?,?,?)";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userdto.getId());
			pstmt.setString(2, userdto.getPwd());
			pstmt.setString(3, userdto.getName());
			pstmt.setString(4, userdto.getEmail());
			pstmt.setString(5, userdto.getTel());
			su = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	return su;
	}
	
	// 로그인 정보 (Singin)
	public String login(String id, String pwd) {
		String name = null;
		try {
			String sql="select * from member where id=? and pwd=?";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id); //로그인시 입력한 
			pstmt.setString(2, pwd);
			res = pstmt.executeQuery(); 
			if(res.next()) { 
				name = res.getString("name"); //행을 읽어오며 String인 name 가져오기 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(con, pstmt, res);
		}
		
		return name;
	}
	
	//회원정보 가져오기 (ModifyForm)
	public userDTO getUserInfo(String id) {
		userDTO userdto = null;
		try {
			String sql="select * from member where id=?";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,id);
			res = pstmt.executeQuery();
			
			// 한 행씩 sql 결과 데이터 String 타입으로 가져와 dto 객체에 저장 
			if(res.next()) {
				userdto = new userDTO();
				userdto.setName(res.getString("name"));
				userdto.setId(res.getString("id"));
				userdto.setPwd(res.getString("pwd"));
				userdto.setEmail(res.getString("email"));
				userdto.setTel(res.getString("tel"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(con, pstmt, res);
		}
		return userdto; 
	}
	
	// 회원정보 수정 
	public int modify(userDTO userdto) {
		int su = 0;
		try {
			String sql="update member set (?,?,?,?,?)";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,"name");
			pstmt.setString(2,"id");
			pstmt.setString(3,"pwd");
			pstmt.setString(4,"email");
			pstmt.setString(5,"tel");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(con,pstmt,res);
		}
		return su;

	}
}


