package nh_service_p;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_p.SignUpDAO;
import db_p.SignUpDTO;
import di.MvcAction;
import di.MvcForward;

public class SignUpReg implements MvcAction {

	@Override
	public MvcForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("중복체크 진입");
		SignUpDTO dto = new SignUpDTO();
		dto.setGrade("C");
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		dto.setPname(request.getParameter("pname"));
		dto.setBirth(request.getParameter("birth"));
		dto.setEmail(request.getParameter("email"));
		dto.setPhone(request.getParameter("phone"));
		dto.setCountry(request.getParameter("country"));
		dto.setCity(request.getParameter("city"));
		dto.setAddDetail(request.getParameter("addDetail"));
		
		int gen = Integer.parseInt(request.getParameter("gender"));
		
		if(gen%2==1) {
			dto.setGender("남");
		}else
			dto.setGender("여");

		new SignUpDAO().signUp(dto);
		
		request.setAttribute("msg", request.getParameter("pname")+"님 환영합니다.");
		request.setAttribute("mainUrl", "greensc/alert.jsp");
		request.setAttribute("goUrl", "Home");
		
		
		return null;
	}

}
