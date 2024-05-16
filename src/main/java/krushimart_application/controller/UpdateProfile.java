package krushimart_application.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import krushimart_application.dao.KrushimartDao;
import krushimart_application.dto.User;

@WebServlet("/updateProfile")
public class UpdateProfile extends HttpServlet {
 @Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 HttpSession session=req.getSession();
		User user=(User) session.getAttribute("user");
		session.setAttribute("user", user);
		KrushimartDao crud=new KrushimartDao();
		
	 User user2=crud.findUser(user.getId());
	 if(user2!=null) {
		user.setFirstName(req.getParameter("fname"));
		user.setLastName(req.getParameter("lname"));
		user.setEmail(req.getParameter("email"));
		user.setPhone(Long .parseLong(req.getParameter("phone")));
		user.setAddress(req.getParameter("address"));
		crud.updateUser(user);
		
			req.setAttribute("message", "Profile Updated Successfully");
			req.getRequestDispatcher("UpdateProfile.jsp").forward(req, resp);
	 }
		
		
}
}
