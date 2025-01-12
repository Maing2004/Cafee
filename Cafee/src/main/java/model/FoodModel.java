package model;

public class FoodModel {
	private int foodId;
	private String foodname;
	private String price;
	private String discount;
	private String description;
	private CategoryModel foodCategory;
	private String photoName;
	
	public FoodModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FoodModel(int foodId, String foodname, String price, String discount, String description, CategoryModel foodCategory,
			String photoName) {
		super();
		this.foodId = foodId;
		this.foodname = foodname;
		this.price = price;
		this.discount = discount;
		this.description = description;
		this.foodCategory = foodCategory;
		this.photoName = photoName;
	}
		
	public FoodModel(String foodname, String price, String discount, String description, CategoryModel foodCategory, String photoName) {
		super();
		this.foodname = foodname;
		this.price = price;
		this.discount = discount;
		this.description = description;
		this.foodCategory = foodCategory;
		this.photoName = photoName;
	}

	public int getFoodId() {
		return foodId;
	}

	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	public String getFoodname() {
		return foodname;
	}

	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public CategoryModel getFoodCategory() {
		return foodCategory;
	}

	public void setFoodCategory(CategoryModel foodCategory) {
		this.foodCategory = foodCategory;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	@Override
	public String toString() {
		return "FoodModel [foodId=" + foodId + ", foodname=" + foodname + ", price=" + price + ", discount=" + discount
				+ ", description=" + description + ", foodCategory=" + foodCategory + ", photoName=" + photoName + "]";
	}
	
	//tính giá sau khi đã giảm
	public double getPriceAfterDiscount() {
		double price = Double.parseDouble(this.getPrice());
		double discount = Double.parseDouble(this.getDiscount());
		double promotion = price - (price * (discount/100));		
		return promotion;
		
	}
	


}
