package cl.lsg.packaje.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class Test implements Controller {



	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
			System.out.println("IdTipoMensaje: " );
			System.out.println("SMensaje agarra esto!!!!!: " );
		return null;
	}

}
