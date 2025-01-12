package control;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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

@WebServlet("/add_product")
@MultipartConfig
public class FoodAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		try {
			String foodname=req.getParameter("fname");
			String price=req.getParameter("price");
			String discount=req.getParameter("discount");
			String description=req.getParameter("desc");
			String category=req.getParameter("category");
			Part part = req.getPart("fimg");
			String fileName=part.getSubmittedFileName(); //lấy tên tệp hình ảnh đã chọn
			
			FoodModel food=new FoodModel();
			food.setFoodname(foodname);
			food.setPrice(price);
			food.setDiscount(discount);
			food.setDescription(description);
			CategoryModel cate = new CategoryModel(Integer.parseInt(category), "");
			food.setFoodCategory(cate);
			food.setPhotoName(fileName);
			
			FoodDAOImpl dao = new FoodDAOImpl(DBConnect.getCon());
			
			String uploadPath=req.getRealPath("product")+File.separator+fileName; //đường dẫn tải lên
			System.out.println(uploadPath);
			
			//tải ảnh đã chọn lên thư mục ảnh
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=part.getInputStream();
			
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			
			boolean f = dao.addFood(food);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Thêm thành công");
				resp.sendRedirect("admin/add_product.jsp");
				
			} else {
				session.setAttribute("faiMsg", "Có lỗi xảy ra");
				resp.sendRedirect("admin/add_product.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
