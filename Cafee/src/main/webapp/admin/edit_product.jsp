<%@page import="model.CategoryModel"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoryDAOImpl"%>
<%@page import="model.FoodModel"%>
<%@page import="database.DBConnect"%>
<%@page import="dao.FoodDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Edit Product</title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
<h3 class="text-center">Sửa sản phẩm</h3>
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">

		
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	FoodDAOImpl dao = new FoodDAOImpl(DBConnect.getCon());
	FoodModel food = dao.getFoodById(id);
	%>
	
	<form action="../edit_product" method="post" >
		<input type="hidden" name="id" value="<%=food.getFoodId() %>">
		
		<div class="form-floating mb-3">
		  <input type="text" name="fname" class="form-control" id="floatingInput" placeholder="" value="<%=food.getFoodname()%>">
		  <label for="floatingInput">Tên sản phẩm</label>
		</div>
		
		<div class="form-floating mb-3">
		  <input type="number" name="price" class="form-control" id="floatingInput" placeholder="" value="<%=food.getPrice()%>">
		  <label for="floatingInput">Giá</label>
		</div>
		
		<div class="form-floating mb-3">
		  <input type="number" name="discount" class="form-control" id="floatingInput" placeholder="" value="<%=food.getDiscount()%>">
		  <label for="floatingInput">Giảm giá</label>
		</div>
		
		<div class="form-floating mb-3">
		  <textarea name="desc" class="form-control" placeholder="" id="floatingTextarea2" style="height: 100px"><%= food.getDescription()%></textarea>
		  <label for="floatingTextarea2">Mô tả</label>
		</div>
		
		<div class="form-floating mb-3">
			<select name="category" class="form-select" id="floatingSelect" aria-label="Floating label select example">			  
			  <%	   
		        CategoryDAOImpl cdao = new CategoryDAOImpl(DBConnect.getCon());
		        List<CategoryModel> list = cdao.getAllCategory();
				  				
		
		        for (CategoryModel c : list) {
		        	
	            %>
	            <option value="<%= c.getCategoryId() %>" ><%= c.getCategoryName() %></option>
	            <%
	            }
	            %>
			  </select>
			  <label for="floatingSelect">Danh mục</label>
		</div>
		
		
		
		<div class="d-grid gap-2 col-6 mx-auto">
		  <button class="btn btn-info btn-lg" type="submit">Cập nhật</button>
		</div>
		
	</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>