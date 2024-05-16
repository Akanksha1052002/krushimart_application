package krushimart_application.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import krushimart_application.dao.KrushimartDao;
import krushimart_application.dto.Product;
import krushimart_application.dto.User;


@WebServlet("/addProduct")

public class AddProductController extends HttpServlet{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			Product product=new Product();
			KrushimartDao crud=new KrushimartDao();
			HttpSession session=req.getSession();
			User user=(User) session.getAttribute("user");
			session.setAttribute("user", user);
			int id=user.getId();
			
			if(req.getParameter("pname")==null) {
				
				List<Product> products=crud.allProduct(id);
				if(products!=null) {
				req.setAttribute("product", products);
				req.getRequestDispatcher("FarmerProduct.jsp").forward(req, resp);
				}
				
			}
			
			else {
			
			try {
				
				product.setUserId(id);
				product.setName(req.getParameter("pname"));
				product.setDescription(req.getParameter("discription"));
				product.setQuantity(Double.parseDouble(req.getParameter("quantity")));
				product.setPrice(Double.parseDouble(req.getParameter("price")));
			User u=crud.findUser(id);
			List<Product> list=u.getProduct();
				
				int ct=crud.addProduct(product);
				if(ct!=0)
				{
					
					list.add(product);
					crud.updateUser(user);
					req.setAttribute("message", "Product Added Successul");
					List<Product> products=crud.allProduct(id);
					if(products!=null) {
					req.setAttribute("product", products);
					req.getRequestDispatcher("FarmerProduct.jsp").forward(req, resp);
					}
					else
					{
						req.getRequestDispatcher("ProductPost.jsp").forward(req, resp);
					}
					
				}
				else
				{
					req.getRequestDispatcher("ProductPost.jsp").forward(req, resp);
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		}
	
}
