<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="model.FoodModel"%>
<%@page import="java.util.List"%>
<%@page import="database.DBConnect"%>
<%@page import="dao.FoodDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>All Product</title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<h3 class="text-center text-danger">Tất cả sản phẩm</h3>
     <%
     FoodDAOImpl dao = new FoodDAOImpl(DBConnect.getCon());
     List<FoodModel> list = dao.getAllFoods();
     
     String key=request.getParameter("keyword");
     if (key==null) {
    	 key="";
     }
     ArrayList<FoodModel> f=dao.find(key);
     %>
     <div class="container">
	     <div class="row">
		  <div class="col">
		    <select class="form-select">
				<option selected>Danh mục</option>
				<option value="1">One</option>				  
			</select>
		  </div>
		  <div class="col">
		    <form class="d-flex" role="search">
        <input name="keyword" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
		</div>    	   	
     </div>
           
	<c:if test="${not empty succMsg }">
	<p class="text-center text-success">${succMsg }</p>
	<c:remove var="succMsg" scope="session"/>
	</c:if>
							
	<c:if test="${not empty faiMsg }">
	<p class="text-center text-danger">${faiMsg }</p>
	<c:remove var="faiMsg" scope="session"/>
	</c:if>
	<h1></h1>
<table class="table table-striped table-hover">
  <thead class="table-dark text-center"> 
    <tr>
      <th scope="col">ID</th>
      <th scope="col" style="width:150px">Tên</th>
      <th scope="col">Giá</th>
      <th scope="col">Giảm giá</th>
      <th scope="col">Giá mới</th>
      <th scope="col" style="width:400px">Mô tả</th>
      <th scope="col" style="width:150px">Danh mục</th>
      <th scope="col">Hình ảnh</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  
  <tbody class="table-group-divider">
  <%
  for (FoodModel food:list) {
	  %>
	  <tr>
	      <td class="text-center"><%=food.getFoodId() %></td>
	      <td><%=food.getFoodname() %></td>
	      <%
			    // Chuyển đổi từ String sang double
			    double price = Double.parseDouble(food.getPrice());
	      		DecimalFormat df = new DecimalFormat("#,###");	      		
			%>
	      <td class="text-center"><%=df.format(price) %>&#8363;</td>
	      <td class="text-center"><%=food.getDiscount() %><i class="fa-solid fa-percent"></i></td>
	      <td class="text-center"><%=df.format(food.getPriceAfterDiscount())%>&#8363;</td>
	      <td><%=food.getDescription() %></td>
	      <td><%=food.getFoodCategory().getCategoryName() %></td>
	      <td class="text-center"><img src=".././product/<%=food.getPhotoName()%>" alt="p<%=food.getFoodId()%>" style="width:80px;height:80px"></td>
	      <td class="text-center">
	      <a href="edit_product.jsp?id=<%=food.getFoodId() %>" class="btn btn-primary">Sửa</a>
	      <a href="../delete?id=<%=food.getFoodId() %>" class="btn btn-danger">Xoá</a>
	      </td>
    </tr>
    <%
  }
  %>   
  </tbody>
  
</table>

</body>
</html>