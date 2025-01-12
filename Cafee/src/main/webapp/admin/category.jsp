<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category</title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
<h3 class="text-center">Danh mục sản phẩm</h3>
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">

<form action="" method="post">
<div class="form-floating mb-3">
	<input type="text" name="fname" class="form-control" id="floatingInput" placeholder="" >
	<label for="floatingInput">Tên danh mục</label>
</div>
<div class="d-grid gap-2 col-6 mx-auto">
	<button class="btn btn-info" type="submit">Thêm</button>
</div>
</form>

</div>
</div>

<h1></h1>

<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Tên</th>      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>1</th>
      <td>Mark</td>      
    </tr>    
  </tbody>
</table>

</div>
</div>
</div>
</body>
</html>