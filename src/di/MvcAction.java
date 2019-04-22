package di;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MvcAction {
	dk_MvcFoward_airHome execute(HttpServletRequest request, HttpServletResponse response);
	
}
