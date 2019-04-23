package db_p;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SearchDAO {

	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public SearchDAO() {
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
	
	public Object searchAir(SearchDTO dto) {
		
		ArrayList<SearchDTO> res = new ArrayList<SearchDTO>();

		try {
			
			sql = "select * from air_item where date(ddate)=date(?) and darea=? and carea =? and seatcnt>=? and flightclass=? order by money"; 

			ptmt = con.prepareStatement(sql);
			
			ptmt.setString(1, dto.getDdate());
			ptmt.setString(2, dto.getDarea());
			ptmt.setString(3, dto.getCarea());
			ptmt.setInt(4, dto.getSeatcnt());
			ptmt.setString(5, dto.getFlightclass());
			
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				dto = new SearchDTO();
				dto.setDdate(rs.getString("ddate"));
				dto.setDarea(rs.getString("darea"));
				dto.setCarea(rs.getString("carea"));
				dto.setAp_Code(rs.getString("ap_Code"));
				dto.setcCode(rs.getString("cCode"));
				dto.setMoney(rs.getInt("money"));
				dto.setA_time(rs.getString("a_time"));
				
				
				res.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close();
		}
		
		
		return res;
	}
	
	
	public Object searchHot(SearchDTO dto) {
		
		ArrayList<SearchDTO> res = new ArrayList<SearchDTO>();

		try {
			
			sql = "select * from hot_com where hnation=? order by money"; 

			ptmt = con.prepareStatement(sql);
			
			ptmt.setString(1, dto.getHnation());
			
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				dto = new SearchDTO();
				dto.setHname(rs.getString("hname"));
				dto.setHnation(rs.getString("hnation"));
				dto.setHinfo(rs.getString("hinfo"));
				
				res.add(dto);
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
