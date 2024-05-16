package krushimart_application.controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import krushimart_application.dao.KrushimartDao;
import krushimart_application.dto.Product;
import krushimart_application.dto.User;
 @WebServlet("/buyerlogin")
public class BuyerLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		//int id=Integer.parseInt(req.getParameter("id"));
		KrushimartDao dao =new KrushimartDao();
		try {
		User dbuser =dao.userLogin(email);

		if(dbuser!=null)
		{
			if(dbuser.getPassword().equals(password))
			{
				HttpSession session=req.getSession();
				session.setAttribute("user", dbuser);
				List<Product> li = dao.productList();
				if (li != null) {
					req.setAttribute("product", li);
					req.getRequestDispatcher("BuyerAllProduct.jsp").forward(req, resp);
				} else {
					req.getRequestDispatcher("FarmerLogin.jsp").forward(req, resp);
				}
			}
			
		}
		}
		catch(NoResultException e) {
			req.setAttribute("message", "User not found please sign up");
			req.getRequestDispatcher("BuyerReg.jsp").forward(req, resp);
		}
}

}
