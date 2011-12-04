package cl.lsg.packaje.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import org.springframework.web.servlet.mvc.SimpleFormController;

public class Test extends SimpleFormController {

	/*public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
			System.out.println("IdTipoMensaje: " );
			System.out.println("aers----SMensaje agarra esto y esto otro!!!!!: " );
		return null;
	}*/

	@Override
	protected ModelAndView onSubmit(Object command) throws Exception {
		// TODO Auto-generated method stub
		return super.onSubmit(command);
	}
	
	
}
