package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.FoodDAOImpl;
import database.DBConnect;
import model.CategoryModel;
import model.FoodModel;

@WebServlet("/edit_product")
public class FoodEdit extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String foodname=req.getParameter("fname");
			String price=req.getParameter("price");
			String discount=req.getParameter("discount");
			String description=req.getParameter("desc");
			String category = req.getParameter("category");
			
			
			FoodModel food = new FoodModel();
			food.setFoodId(id);
			food.setFoodname(foodname);
			food.setPrice(price);
			food.setDiscount(discount);
			food.setDescription(description);
			CategoryModel cate = new CategoryModel(Integer.parseInt(category), "");
			food.setFoodCategory(cate);
			
			FoodDAOImpl dao = new FoodDAOImpl(DBConnect.getCon());
			boolean f=dao.updateEditFood(food);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Cập nhật thành công");
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
