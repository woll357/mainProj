package db_p;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class airDAO {
	
	
	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public airDAO() {
		// TODO Auto-generated constructor stub
		
		DataSource ds;
		try {
			ds = (DataSource)new InitialContext().lookup("java:comp/env/scanner");
			con = ds.getConnection();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

	
	public void write(air_tempDTO dto) {
		
		
		try {
			
			sql = "insert into air_temp "
			+ "(id, crn, img, air_name, grade, time ) values "
			+ "(? ,  ?  , ? ,      ? ,   ? ,  sysdate() )";
			
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, dto.getId());
			ptmt.setString(2, dto.getCrn());
			ptmt.setString(3, dto.getImg());
			ptmt.setString(4, dto.getAir_name());
			ptmt.setString(5, dto.getGrade());
			
			ptmt.executeUpdate();
			
		
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close();
		}

	}
	

	
	public air_itemDTO detail(String day , String darea , String carea , String ap_code ) {
		
		air_itemDTO res = null;
		
		sql = "select * from air_item where date(ddate)>=date(?) and darea = ? and carea = ? and ap_code = ? ";
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, day);
			ptmt.setString(2, darea);
			ptmt.setString(3, carea);
			ptmt.setString(4, ap_code);
			
			rs = ptmt.executeQuery();
			
			if(rs.next()) {
				res = new air_itemDTO();
				res.setDdate(rs.getTimestamp("ddate"));
				res.setDarea(rs.getString("darea"));
				res.setCarea(rs.getString("carea"));
				res.setImg(rs.getString("img"));
				res.setAp_code(rs.getString("ap_code"));
				res.setCcode(rs.getString("ccode"));
				res.setMoney(rs.getInt("money"));
				res.setA_time(rs.getTimestamp("money"));
				res.setSeatcnt(rs.getInt("seatcnt"));
				res.setFlightclass(rs.getString("flightclass"));
//				res.setSeq(rs.getInt("seq"));
//				res.setLevel(rs.getInt("level"));
//				res.setNo(rs.getInt("no"));
//				res.setTitle(rs.getString("title"));
//				res.setPname(rs.getString("pname"));
//				res.setRegdate(rs.getTimestamp("regdate"));
//				res.setUpfile(rs.getString("upfile"));
//				res.setContent(rs.getString("content"));
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}finally {
		   close();
	  }
		       
		return res;
	}
	
	
public air_itemDTO detail(String a) {
		
		air_itemDTO res = null;
		
		sql = "select * from air_item where ap_code = ? " ;
		
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, a);

			
			rs = ptmt.executeQuery();
			
			if(rs.next()) {
				res = new air_itemDTO();
				res.setDdate(rs.getTimestamp("ddate"));
				res.setDarea(rs.getString("darea"));
				res.setCarea(rs.getString("carea"));
				res.setImg(rs.getString("img"));
				res.setAp_code(rs.getString("ap_code"));
				res.setCcode(rs.getString("ccode"));
				res.setMoney(rs.getInt("money"));
				res.setA_time(rs.getTimestamp("money"));
				res.setSeatcnt(rs.getInt("seatcnt"));
				res.setFlightclass(rs.getString("flightclass"));	
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}finally {
		   close();
	  }
		       
		return res;
	}
	
	
	
	
	public void close() {
		if(rs!=null) try {rs.close();} catch (SQLException e) {	}
		if(ptmt!=null) try {ptmt.close();} catch (SQLException e) {	}
		if(con!=null) try {con.close();} catch (SQLException e) {	}
	}
	
	
}
