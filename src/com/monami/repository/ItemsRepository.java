package com.monami.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import com.monami.db.DBConn;
import com.monami.model.Items;
import com.monami.model.Users;

public class ItemsRepository {
	private static final String TAG = "ItemsRepository : "; // TAG 생성 (오류 발견시 용이)
	private static ItemsRepository instance = new ItemsRepository();

	private ItemsRepository() {}

	public static ItemsRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 아이템 넣기
	public int insertItem(Items item, String value) { // object 받기(안에 내용 다 받아야 하니까) // insert하고 싶으면 save
		final String SQL = "INSERT INTO items(id, imgUrl, name, price, value) " + "VALUES(ITEMS_SEQ.nextval,?,?,?,?)";																																															// update
		try {
			conn = DBConn.getConnection(); // DB에 연결
			pstmt = conn.prepareStatement(SQL);
			
			// 물음표 완성하기
			pstmt.setString(1, item.getImgUrl());
			pstmt.setString(2, item.getName());
			pstmt.setString(3, item.getPrice());
			pstmt.setString(4, value);
			
			return pstmt.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "insertItem : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1; // 실패시
	}
}
