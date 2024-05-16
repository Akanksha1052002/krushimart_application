package krushimart_application.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.exception.ConstraintViolationException;

import krushimart_application.dao.KrushimartDao;
import krushimart_application.dto.User;
@WebServlet("/farmerReg")
public class FarmerRegistration extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user=new User();
		KrushimartDao dao=new KrushimartDao();
		user.setFirstName(req.getParameter("fname"));
		user.setLastName(req.getParameter("lname"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setPhone(Long .parseLong(req.getParameter("phone")));
		user.setAddress(req.getParameter("address"));
		user.setType("Farmer");
		try {
		int ct=dao.farmerRegistration(user);
		if(ct!=0)
		{
			req.setAttribute("message", "Register  Successful..Please Login");
			req.getRequestDispatcher("FarmerLogin.jsp").forward(req, resp);
		}
		}
		catch(ConstraintViolationException e)
		{
			req.setAttribute("message", "Duplicate Data Found!");
			req.getRequestDispatcher("FarmerReg.jsp").forward(req, resp);
		}
		
	}
}
