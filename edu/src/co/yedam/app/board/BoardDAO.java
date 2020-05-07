package co.yedam.app.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import co.yedam.app.common.ConnectionManager;

public class BoardDAO {

	public void BoardInsert(BoardVO vo) {
		Connection conn = null;
		PreparedStatement psmt = null;

		String sql = "insert into board (seq, title, contents, regdt, id) values (board_seq.NEXTVAL, ?, ?, sysdate, ?)";

		conn = ConnectionManager.getConnnect();
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContents());
			psmt.setString(3, vo.getId());

			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.close(conn);
		}
	}

}
