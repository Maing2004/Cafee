package dao;

import java.util.ArrayList;
import java.util.List;

import model.FoodModel;

public interface FoodDAO {

	public boolean addFood(FoodModel food);
	
	public List<FoodModel> getAllFoods();
	
	public FoodModel getFoodById(int id);
	
	public boolean updateEditFood(FoodModel food);
	
	public boolean deleteFood(int id);
	
	public List<FoodModel> getAllFoodsByCId(String categoryId);
	
	public List<FoodModel> getRandomFood(String categoryId);
	
	public ArrayList<FoodModel> find(String keyword);
} 
