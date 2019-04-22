package di;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MvcAction {
	MacFoward execute(HttpServletRequest request, HttpServletResponse response);
}
