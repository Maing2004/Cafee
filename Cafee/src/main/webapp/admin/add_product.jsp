<%@page import="model.CategoryModel"%>
<%@page import="java.util.List"%>
<%@page import="database.DBConnect"%>
<%@page import="dao.CategoryDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Add Product</title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">

<h3 class="text-center text-warning">Thêm sản phẩm</h3>

	<c:if test="${not empty succMsg }">
	<p class="text-center text-success">${succMsg }</p>
	<c:remove var="succMsg" scope="session"/>
	</c:if>
							
	<c:if test="${not empty faiMsg }">
	<p class="text-center text-danger">${faiMsg }</p>
	<c:remove var="faiMsg" scope="session"/>
	</c:if>
	
<form action="../add_product" method="post" enctype="multipart/form-data">

	<div class="row mb-3">
		<label class="col-sm-2 col-form-label">Tên sản phẩm</label>
		<div class="col-sm-10">
	  	<input type="text" name="fname" class="form-control" placeholder="Tên sản phẩm">  
	  	</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-2 col-form-label">Giá</label>
		<div class="col-sm-10">
		<input type="number" name="price" class="form-control" placeholder="Giá">  
		</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-2 col-form-label">Giảm giá</label>
		<div class="col-sm-10">
	  	<input type="number" name="discount" class="form-control" placeholder="Giảm giá">  
	  	</div>
	</div>
	
	<div class="row mb-3">
		<label class="col-sm-2 col-form-label">Mô tả</label>
		<div class="col-sm-10">
	  	<textarea name="desc" class="form-control" id="editor" style="height: 100px"></textarea>	
	  	</div>  
	</div>
	
	<div class="row mb-3">
	<label class="col-sm-2 col-form-label">Danh mục</label>
	<div class="col-sm-10">
		<select name="category" class="form-select" >
		  <option selected>---Chọn---</option>
		  <%
		  		CategoryDAOImpl dao = new CategoryDAOImpl(DBConnect.getCon());
				List<CategoryModel> list = dao.getAllCategory();
				for (CategoryModel c:list) {
		   %>	
		   	<option value="<%=c.getCategoryId()%>"><%=c.getCategoryName() %></option>
				<%
				}
				%>
		  </select>
	 </div>	  
	</div>
	
	<div class="row mb-3">
	  <label for="formFile" class="col-sm-2 col-form-label">Tải ảnh</label>
	  <div class="col-sm-10">
	  <input name="fimg" class="form-control" type="file" id="formFile">
	  </div>
	</div>
	
	<div class="d-grid gap-2 col-6 mx-auto">
	  <button class="btn btn-info btn-lg" type="submit">Lưu</button>
	</div>

</form>
</div>
<script>
	CKEDITOR.replace('description')
</script>	
</body>
</html>