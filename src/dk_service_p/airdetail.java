package dk_service_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_p.airDAO;
import db_p.air_itemDTO;
import di.MvcAction;
import di.MvcForward;

public class airdetail implements MvcAction {

	@Override
	public MvcForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println("진입진입");
		System.out.println(request.getParameter("ccode"));
		
		air_itemDTO dto = new air_itemDTO();
		dto.setCcode(request.getParameter("ccode"));
		
		airDAO dao = new airDAO();
	
	//	request.setAttribute("dto", dao.itemdetail(dto));
		
		
		
		
		
		return null;
	}

}
