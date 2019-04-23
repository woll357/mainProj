package dk_service_p;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_p.AirDAO;
import db_p.Air_itemDTO;
import di.MvcAction;
import di.MvcForward;

public class airap_codeReg implements MvcAction {

	@Override
	public MvcForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		//상품목록이다
		
		System.out.println("진입");
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Air_itemDTO dto = new Air_itemDTO();
		String ccode = request.getParameter("ccode");
		
		dto.setAp_code(ccode);
		
		AirDAO dao = new AirDAO();
		
		request.setAttribute("dto", dao.detail(ccode));
	
		
		
		
		return null;
	}

}
