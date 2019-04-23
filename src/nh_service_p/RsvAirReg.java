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

public class RsvAirReg implements MvcAction {

	@Override
	public MvcForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String ddate1 = request.getParameter("ddate1");
		SearchDTO dto1 = new SearchDTO();
		dto1.setDdate(ddate1);
		dto1.setDarea(request.getParameter("darea"));
		dto1.setCarea(request.getParameter("carea"));
		dto1.setSeatcnt(Integer.parseInt(request.getParameter("seatcnt")));
		dto1.setFlightclass(request.getParameter("flightclass"));
		request.setAttribute("dto1", new SearchDAO().searchAir(dto1));
		String ddate2 = request.getParameter("ddate2");
		
		SearchDTO dto2 = new SearchDTO();
		dto2.setDdate(ddate2);
		dto2.setDarea(request.getParameter("carea"));
		dto2.setCarea(request.getParameter("darea"));
		dto2.setSeatcnt(Integer.parseInt(request.getParameter("seatcnt")));
		dto2.setFlightclass(request.getParameter("flightclass"));
		request.setAttribute("dto2", new SearchDAO().searchAir(dto2));
		
		
		
		
		
		
		return null;
	}

}
