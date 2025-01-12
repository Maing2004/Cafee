<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Navbar</title>
<%@include file="allcss.jsp" %>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="home.jsp">Admin</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link" href="all_product.jsp">Quản lý sản phẩm</a>
        </li> 
        
        <li class="nav-item">
          <a class="nav-link" href="../view/Home.jsp" target="_blank" >Quản lý trang chủ</a>
        </li>      
      </ul>      
    </div>
  </div>
</nav>
</body>
</html>