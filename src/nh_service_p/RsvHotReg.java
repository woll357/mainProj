package nh_service_p;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_p.SearchDAO;
import db_p.SearchDTO;
import di.MvcAction;
import di.MvcForward;

public class RsvHotReg implements MvcAction {

	@Override
	public MvcForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		SearchDTO dto = new SearchDTO();
		dto.setHnation(request.getParameter("hnation"));
		request.setAttribute("dto", new SearchDAO().searchAir(dto));
		
		request.setAttribute("dto", new SearchDAO().searchHot(dto));
		request.setAttribute("mainUrl", "");

		return null;
	}

}
