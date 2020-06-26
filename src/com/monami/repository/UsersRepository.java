package com.monami.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.monami.db.DBConn;
import com.monami.model.Users;

public class UsersRepository {
	private static final String TAG = "UserRepository : "; // TAG 생성 (오류 발견시 용이)
	private static UsersRepository instance = new UsersRepository();

	private UsersRepository() {
	}

	public static UsersRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 회원가입
	public int join(Users user) { // object 받기(안에 내용 다 받아야 하니까) // insert하고 싶으면 save
		final String SQL = "INSERT INTO users(id, username, password, phonenumber, email, address, userRole, createDate) "
				+ "VALUES(USERS_SEQ.nextval,?,?,?,?,?,?,sysdate)"; // userProfile은 나중에 update
		try {
			conn = DBConn.getConnection(); // DB에 연결
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.setInt(3, user.getPhonenumber());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getAddress());
			pstmt.setString(6, user.getUserRole()); // user권한 (종류는 user, admin)
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "join : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1; // 실패시
	}

	// 회원정보 찾기
	public int findByUsername(String username) {

		final String SQL = "SELECT count(*) " + "FROM users WHERE username=?";
		Users user = null;
		try {
			conn = DBConn.getConnection(); // DB에 연결
			pstmt = conn.prepareStatement(SQL);

			// 물음표 완성하기
			pstmt.setString(1, username);

			// if 돌려서 rs -> java오브젝트에 집어넣기
			rs = pstmt.executeQuery();
			if (rs.next()) { // 못찾으면 0, 찾으면 1
				return rs.getInt(1); // 첫번째, SQL index시작이 1 / 0 or 1
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "findByUsernameAndPassword : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1; // DB오류시 -1
	}

	// 아이디 비밀번호 찾기
	public Users findByUsernameAndPassword(String username, String password) {
		final String SQL = "SELECT id, username, phonenumber, email, address, userProfile, userRole, createDate "
				+ "FROM users WHERE username=? AND password=?";
		Users user = null;
		try {
			conn = DBConn.getConnection(); // DB에 연결
			pstmt = conn.prepareStatement(SQL);

			// 물음표 완성하기
			pstmt.setString(1, username);
			pstmt.setString(2, password);

			// if 돌려서 rs -> java오브젝트에 집어넣기
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new Users(); // 무조건 null이 아니라는 의미
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPhonenumber(rs.getInt("phonenumber"));
				user.setEmail(rs.getString("email"));
				user.setAddress(rs.getString("address"));
				user.setUserProfile(rs.getString("userProfile"));
				user.setUserRole(rs.getString("userRole"));
				user.setCreateDate(rs.getTimestamp("createDate"));
			}
			return user; // user 오브젝트를 만들어서 return
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "findByUsernameAndPassword : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null; // 실패시
	}
	
	
	// 회원정보수정
	public int update(Users user) { // object 받기(안에 내용 다 받아야 하니까)
		final String SQL = "UPDATE users SET password=?, phonenumber=?, email=?, address=? WHERE id=?";
		try {
			conn = DBConn.getConnection(); // DB에 연결
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setString(1, user.getPassword());
			pstmt.setInt(2, user.getPhonenumber());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getAddress());
			pstmt.setInt(5, user.getId());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "update : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1; // 실패시
	}

	// 아이디 찾기
	public Users findById(int id) { // object 받기(안에 내용 다 받아야 하니까)
		final String SQL = "SELECT * FROM users WHERE id =?";
		Users user = null;
		try {
			conn = DBConn.getConnection(); // DB에 연결
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, id);
			// if 돌려서 rs -> java오브젝트에 집어넣기
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user = Users.builder()
						.id(rs.getInt("id"))
						.username(rs.getString("username"))
						.phonenumber(rs.getInt("phonenumber"))
						.email(rs.getString("email"))
						.address(rs.getString("address"))
						.createDate(rs.getTimestamp("createDate"))
						.userProfile(rs.getString("userProfile"))
						.build();
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "findById : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null; // 실패시
	}
}
