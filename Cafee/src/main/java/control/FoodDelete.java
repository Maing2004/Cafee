package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FoodDAOImpl;
import database.DBConnect;

@WebServlet("/delete")
public class FoodDelete extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			FoodDAOImpl dao=new FoodDAOImpl(DBConnect.getCon());
			boolean f = dao.deleteFood(id);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Xoá thành công");
				resp.sendRedirect("admin/all_product.jsp");
			} else {
				session.setAttribute("faiMsg", "Có lỗi xảy ra");
				resp.sendRedirect("admin/all_product.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
