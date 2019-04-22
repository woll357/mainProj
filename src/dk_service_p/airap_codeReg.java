package dk_service_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_p.airDAO;
import db_p.air_itemDTO;
import di.MvcAction;
import di.dk_MvcFoward_airHome;

public class airap_codeReg implements MvcAction {

	@Override
	public dk_MvcFoward_airHome execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println("진입");
		
		
		air_itemDTO dto = new air_itemDTO();
		dto.setAp_code(request.getParameter("ap_code"));
		
		airDAO dao = new airDAO();
		
		request.setAttribute("dto", dao.detail(request.getParameter("ap_code")));
	
		
		
		
		return null;
	}

}
