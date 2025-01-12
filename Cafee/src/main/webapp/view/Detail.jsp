<%@page import="java.text.DecimalFormat"%>
<%@page import="model.FoodModel"%>
<%@page import="java.util.List"%>
<%@page import="database.DBConnect"%>
<%@page import="dao.FoodDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
<style>
    .product-container {
        display: flex;
        justify-content: center;
        padding: 30px;
        background-color: #f9f9f9;
        border-radius: 15px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        max-width: 900px;
        margin: 0 auto;
    }

    .product-image {
        width: 35%;
        height: auto;
        border-radius: 10px;
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        object-fit: cover;
    }

    .product-details {
        width: 60%;
        padding-left: 20px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .price {
        font-size: 20px;
        color: #e74c3c;
        font-weight: bold;
    }

    .old-price {
        font-size: 16px;
        color: #95a5a6;
        text-decoration: line-through;
        margin-right: 10px;
    }

    .quantity-input {
        padding: 8px;
        width: 60px;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .size-btn {
        padding: 8px 16px;
        background-color: transparent;
        color: #3498db;
        border: 1px solid #3498db;
        border-radius: 25px;
        font-size: 14px;
        cursor: pointer;
        margin-right: 8px;
    }

    .selected-size {
        background-color: #2ecc71;
        color: white;
        border-color: #2ecc71;
    }

    .buy-btn {
        background-color: #e74c3c;
        color: white;
        border: none;
        padding: 12px 25px;
        font-size: 16px;
        font-weight: bold;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 15px;
    }

    .product-description {
        font-size: 16px;
        color: #444;
        margin-top: 20px;
        line-height: 1.6;
    }

    .related-products {
        display: flex;
        gap: 20px;
        margin-top: 30px;
        justify-content: center;
    }

    .related-product {
        width: 250px;
        text-align: center;
        background: #fff;
        padding: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        transition: transform 0.3s ease;
    }

    .related-product:hover {
        transform: translateY(-5px);
    }

    .related-product img {
        width: 100%;
        border-radius: 10px;
        transition: transform 0.3s;
    }

    .related-product h5 {
        color: #6f4e37;
        margin: 10px 0;
    }

    .related-product p {
        color: #444;
        font-size: 16px;
    }

</style>
</head>
<body>
<div class="product-container">
    <img src="image/img2.jpg" class="product-image" alt="Cà phê kem bọt">

    <div class="product-details">
        <h2 style="color: #2c3e50; font-size: 26px; font-weight: bold; margin-bottom: 20px;">Cà phê kem bọt</h2>

        <div>
            <span class="old-price">Giá cũ: 100,000 VND</span>
            <span class="price">Giá mới: 80,000 VND</span>
        </div>

        <div style="margin-bottom: 15px;">
            <label for="quantity" style="font-size: 16px; color: #34495e; font-weight: 500;">Số lượng:</label>
            <input type="number" id="quantity" name="quantity" min="1" max="100" value="1" class="quantity-input">
        </div>

        <div style="margin-bottom: 15px;">
            <label style="font-size: 16px; color: #34495e; font-weight: 500;">Size:</label>
            <div style="display: inline-block; margin-left: 10px;">
                <button id="sizeM" class="size-btn" onclick="selectSize('M')">M</button>
                <button id="sizeL" class="size-btn" onclick="selectSize('L')">L</button>
            </div>
        </div>

        <button class="buy-btn">Mua ngay</button>
    </div>
</div>

<!-- Tiêu đề Mô tả sản phẩm -->
<h3 style="text-align: center; color: #34495e; font-size: 24px; font-weight: bold; margin-top: 40px;">Mô tả sản phẩm</h3>

<!-- Mô tả sản phẩm -->
<p class="product-description">
    Cà phê kem bọt là sự kết hợp hoàn hảo giữa vị đắng của cà phê và lớp kem mịn màng tạo cảm giác thơm ngon, sảng khoái. Đây là một món đồ uống không thể thiếu cho những ai yêu thích sự mới mẻ và lạ miệng.
</p>

<!-- Các sản phẩm liên quan -->
<h3 style="text-align: center; color: #34495e; font-size: 24px; font-weight: bold;">Các sản phẩm liên quan</h3>

<div class="related-products">
    <a href="#" style="text-decoration: none;">
        <div class="related-product">
            <img src="image/cf.jpg" alt="">
            <h5>Coffee đen phủ kem</h5>
            <p>49.000 đ</p>
        </div>
    </a>
    <a href="#" style="text-decoration: none;">
        <div class="related-product">
            <img src="image/cf1.jpg" alt="">
            <h5>Cà phê siêu chocolate</h5>
            <p>99.000 đ</p>
        </div>
    </a>
    
    <a href="#" style="text-decoration: none;">
        <div class="related-product">
            <img src="image/cf2.jpg" alt="">
            <h5>Cà phê muối</h5>
            <p>35.000 đ</p>
        </div>
    </a>
    
     <a href="#" style="text-decoration: none;">
        <div class="related-product">
            <img src="image/cf4.jpg" alt="">
            <h5>Đen đá không đường</h5>
            <p>15.000 đ</p>
        </div>
    </a>
</div>

<script>
    function selectSize(size) {
        document.getElementById('sizeM').classList.remove('selected-size');
        document.getElementById('sizeL').classList.remove('selected-size');
        
        if (size === 'M') {
            document.getElementById('sizeM').classList.add('selected-size');
        } else if (size === 'L') {
            document.getElementById('sizeL').classList.add('selected-size');
        }
    }
</script>

<jsp:include page="Footer.jsp" />

</body>
</html>
