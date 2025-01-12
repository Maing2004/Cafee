<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.CategoryModel"%>
<%@page import="dao.CategoryDAOImpl"%>
<%@page import="model.FoodModel"%>
<%@page import="java.util.List"%>
<%@page import="database.DBConnect"%>
<%@page import="dao.FoodDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />
<img id="img" onclick="changeImage()" src="../image/nenn.jpg" style="width: 100%; height: auto; alt="">
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f9f9f9;
}

.category-list {
	list-style: none;
	padding: 0;
}

.category-list li {
	padding: 10px 15px;
	border-bottom: 1px solid #e0e0e0;
	cursor: pointer;
}

.category-list li:hover {
	background-color: #f0f0f0;
}

.product-card {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-between;
	text-align: center;
	padding: 15px;
	background: white;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	border: 1px solid #e0e0e0;
	border-radius: 8px;
	transition: transform 0.2s;
	
}

.product-card:hover {
	transform: scale(1.05);
}

.product-card img {
	width: 100%;
	height: 300px;
	border-radius: 8px;
	
}

.product-card h5 {
	font-size: 16px;
	margin: 10px 0;
}

.product-card p {
	color: #888;
	margin: 5px 0;
}

.product-card .price {
	color: #28a745;
	font-weight: bold;
	font-size: 18px;
}

.product-card .original-price {
	color: #ccc;
	text-decoration: line-through;
}

.product-card .btn-container {
	display: flex;
	justify-content: space-between;
	width: 100%;
}

.product-card button {
	margin: 5px;
	padding: 8px 15px;
	border-radius: 5px;
	flex: 1;
}

.btn-outline-success, .btn-outline-primary {
	width: auto;
}
</style>

<body>
	<%
		FoodDAOImpl dao = new FoodDAOImpl(DBConnect.getCon());
				
		String cate = request.getParameter("category"); 
					
		List<FoodModel> list=null;
		
		if(cate.trim().equals("all")) { 
			list=dao.getAllFoods();
		 } else {
			String categoryId = cate.trim();
			list=dao.getAllFoodsByCId(categoryId);		
		} 							
		
		CategoryDAOImpl cdao = new CategoryDAOImpl(DBConnect.getCon());
		List<CategoryModel> listc = cdao.getAllCategory();		
		
	%>
	<div class="container my-4">
	
		<div class="row">
			<div class="col-md-3">
				<h4>Danh Mục Sản Phẩm</h4>
				
				<!-- hiển thị danh mục sản phẩm -->
				<ul class="category-list">	
					<li onclick="">
						<a class="list-group-item list-group-item-action" href="productnv.jsp?category=all">Tất cả sản phẩm</a>
					</li>									
					<%
						for (CategoryModel c : listc) {
					%>
					<li onclick="<%=c.getCategoryId()%>">
						<a class="list-group-item list-group-item-action" href="productnv.jsp?category=<%=c.getCategoryId()%>"><%=c.getCategoryName()%></a>
					</li>
					<%
						}
					%>
				</ul>
				<!-- hiển thị sản phẩm theo danh mục -->
				
			</div>

	
	<script>
     
	let cart = JSON.parse(localStorage.getItem('cart')) || [];

    function addToCart(foodId, foodName, price, photo) {
        const product = { id: foodId, name: foodName, price: price, photo: photo };
        cart.push(product);
        localStorage.setItem('cart', JSON.stringify(cart));
        updateCartCount();
        alert(`Đã thêm ${foodName} vào giỏ hàng.`);
    }

    function updateCartCount() {
        const cartCount = cart.length;
        document.getElementById('cart-count').innerText = cartCount;
    }

    

    
    </script>
    
</body>