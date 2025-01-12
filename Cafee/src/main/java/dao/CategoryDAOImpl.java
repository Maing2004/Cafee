package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.CategoryModel;

public class CategoryDAOImpl implements CategoryDAO{

	private Connection con;

	public CategoryDAOImpl(Connection con) {
		super();
		this.con= con;
	}

	public List<CategoryModel> getAllCategory() {
		List<CategoryModel> list = new ArrayList<CategoryModel>();
		CategoryModel c = null;
		try {
			String sql = "select * from category";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				c = new CategoryModel();
				c.setCategoryId(rs.getInt(1));
				c.setCategoryName(rs.getString(2));
				list.add(c);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	
	
	
}
