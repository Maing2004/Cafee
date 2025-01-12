package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.CategoryModel;
import model.FoodModel;

public class FoodDAOImpl implements FoodDAO{

	private static Connection con;
	

	public FoodDAOImpl(Connection con) {
		super();
		this.con= con;
	}

	public boolean addFood(FoodModel food) {
		boolean f = false;
		try {
			String sql="insert into product(foodname,price,discount,description,foodCategory,photo) values (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,food.getFoodname());
			ps.setString(2,food.getPrice());
			ps.setString(3, food.getDiscount());
			ps.setString(4,food.getDescription());
			ps.setInt(5, food.getFoodCategory().getCategoryId());			
			ps.setString(6,food.getPhotoName());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return f;
	}

	public List<FoodModel> getAllFoods() {
		
			List<FoodModel> list = new ArrayList<FoodModel>();
			FoodModel food = null;
			
		try {
				String sql = "select p.*,c.categoryname from product p join category c on p.foodCategory=c.categoryId";
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					food=new FoodModel();
					food.setFoodId(rs.getInt(1));
					food.setFoodname(rs.getString(2));
					food.setPrice(rs.getString(3));
					food.setDiscount(rs.getString(4));
					food.setDescription(rs.getString(5));
					CategoryModel cate = new CategoryModel(rs.getInt(6),rs.getString("categoryname"));
					food.setFoodCategory(cate);					
					food.setPhotoName(rs.getString(7));
					list.add(food);
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public FoodModel getFoodById(int id) {
		
		FoodModel food = null;
		try {
			String sql = "select * from product where foodId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				food = new FoodModel();
				food.setFoodId(rs.getInt(1));
				food.setFoodname(rs.getString(2));
				food.setPrice(rs.getString(3));
				food.setDiscount(rs.getString(4));
				food.setDescription(rs.getString(5));
				CategoryModel cate = new CategoryModel(rs.getInt(6),"");
				food.setFoodCategory(cate);						
				food.setPhotoName(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return food;
	}

	public boolean updateEditFood(FoodModel food) {
		boolean f = false;
		try {
			String sql="update product set foodname=?,price=?,discount=?,description=?,foodCategory=? where foodId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, food.getFoodname());
			ps.setString(2,food.getPrice());
			ps.setString(3, food.getDiscount());
			ps.setString(4, food.getDescription());
			ps.setInt(5, food.getFoodCategory().getCategoryId());			
			ps.setInt(6, food.getFoodId());						
			int i = ps.executeUpdate();			
			if(i==1) {
				f=true;				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteFood(int id) {
		boolean f=false;
		try {
			String sql="delete from product where foodId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	//lấy sản phẩm theo mã danh mục
	public List<FoodModel> getAllFoodsByCId(String categoryId) {
		
		List<FoodModel> list = new ArrayList<FoodModel>();
		FoodModel food = null;
		try {
			String sql = "select * from product where foodCategory =?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, categoryId);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				food = new FoodModel();
				food.setFoodId(rs.getInt(1));
				food.setFoodname(rs.getString(2));
				food.setPrice(rs.getString(3));
				food.setDiscount(rs.getString(4));
				food.setDescription(rs.getString(5));
				CategoryModel cate = new CategoryModel(rs.getInt(6),"");
				food.setFoodCategory(cate);								
				food.setPhotoName(rs.getString(7));
				list.add(food);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	//lấy random sản phẩm theo mã danh mục
	public List<FoodModel> getRandomFood(String categoryId) {
		List<FoodModel> list = new ArrayList<FoodModel>();
		FoodModel food = null;
		try {
			String sql = "select * from product where foodCategory =? order by rand() limit 4";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, categoryId);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				food = new FoodModel();
				food.setFoodId(rs.getInt(1));
				food.setFoodname(rs.getString(2));
				food.setPrice(rs.getString(3));
				food.setDiscount(rs.getString(4));
				food.setDescription(rs.getString(5));
				CategoryModel cate = new CategoryModel(rs.getInt(6),"");
				food.setFoodCategory(cate);								
				food.setPhotoName(rs.getString(7));
				list.add(food);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public ArrayList<FoodModel> find(String keyword) {
		ArrayList<FoodModel> list = new ArrayList<FoodModel>();
		FoodModel food = null;
		
	try {
			String sql = "select * from product where foodname like \"%"+keyword+"%\"" ;
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				food=new FoodModel();
				food.setFoodId(rs.getInt(1));
				food.setFoodname(rs.getString(2));
				food.setPrice(rs.getString(3));
				food.setDiscount(rs.getString(4));
				food.setDescription(rs.getString(5));
				CategoryModel cate = new CategoryModel(rs.getInt(6),rs.getString("categoryname"));
				food.setFoodCategory(cate);					
				food.setPhotoName(rs.getString(7));
				list.add(food);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return list;
	}

	
	
	
	
	

	
}
