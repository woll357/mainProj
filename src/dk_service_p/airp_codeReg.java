package dk_service_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_p.AirDAO;
import db_p.Air_itemDTO;
import di.MvcAction;
import di.MvcForward;

public class airp_codeReg implements MvcAction {

	@Override
	public MvcForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//헝공편 목록
		
		
		
		System.out.println("항공편목록진입");
		
		
		Air_itemDTO dto = new Air_itemDTO();
		dto.setAp_code(request.getParameter("air_p"));
		
		AirDAO dao = new AirDAO();
		
		request.setAttribute("dto", dao.detail(request.getParameter("air_p")));
		
		return null;
	}

}
