package dk_service_p;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_p.AirDAO;
import db_p.Air_itemDTO;
import di.MvcAction;
import di.MvcForward;

public class airitem_modify implements MvcAction {

	@Override
	public MvcForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		//항공편 수정
		System.out.println("airitem_modify 진입");
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>c코드라구 ㅜ"+request.getParameter("ccode"));
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>c코드라구 ㅜ"+request.getParameter("ddate"));
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>c코드라구 ㅜ"+request.getParameter("carea"));
		
		Air_itemDTO dto = new Air_itemDTO();
		
		dto.setAp_code(request.getParameter("ap_code"));
		dto.setDdateStr(request.getParameter("ddate"));
		dto.setDarea(request.getParameter("darea"));
		dto.setCarea(request.getParameter("carea"));
		dto.setMoney(Integer.parseInt(request.getParameter("money")));
		dto.setMoney(Integer.parseInt(request.getParameter("money")));
		dto.setTotseatcnt(Integer.parseInt(request.getParameter("totseatcnt")));
		dto.setFlightclass(request.getParameter("flightclass"));
		dto.setCcode(request.getParameter("ccode"));
		
		AirDAO dao = new AirDAO();
		
		//dao.modify( dto , request.getParameter("ccode"));
		dao.modify(dto);
	//	dto.setCcode(request.getParameter("ccode"));
		
		
		
		
		request.setAttribute("msg", "작성되었습니다");
		request.setAttribute("goUrl", "airdetail?ccode="+request.getParameter("ccode"));
		request.setAttribute("mainUrl", "air/alert.jsp");
		
		
		
		
		return null;
	}

}
