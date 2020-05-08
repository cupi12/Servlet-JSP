package co.yedam.app.board;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.yedam.app.common.ConnectionManager;

public class BoardDAO {

	public void BoardInsert(BoardVO vo) {
		Connection conn = null;
		PreparedStatement psmt = null;

		String sql = "insert into board (seq, title, contents, regdt, id) values ((select nvl(max(seq),0)+1 from board), ?, ?, sysdate, ?)";

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
	
	public ArrayList<BoardVO> getBoardList() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			Connection conn = null;
			PreparedStatement psmt = null;
			conn = ConnectionManager.getConnnect();
			String sql = "select b.*, m.name from board b join member m on (b.id = m.id) order by seq desc";
			psmt = conn.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setContents(rs.getString("contents"));
				vo.setId(rs.getString("id"));
				vo.setRegdt(rs.getString("regdt"));
				vo.setSeq(rs.getInt("seq"));
				vo.setTitle(rs.getString("title"));
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
