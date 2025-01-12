<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />
<div class="image">
    <img id="img" onclick="changeImage()" src="../image/nenn.jpg" style="width: 100%; height: auto; alt="">
    </div>
    <script>
    var index = 1;
     function changeImage()  {
    	var imgs = ["../image/nenn.jpg", "../image/nen1.jpg", "../image/nen2.jpg", "../image/nen3.jpg", "../image/nen4.jpg"];
    	document.getElementById('img').src = imgs[index];
    	index++;
    	if (index==5) {
    		index = 0;
    	}
    }
    setInterval(changeImage, 1000);
    </script>
<style>
/* styles.css */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
}

.container {
    display: flex;
    gap: 20px;
    padding: 20px;
    flex-wrap: wrap;
}

.small-card, .large-card {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    overflow: hidden;
}

.small-card {
    flex: 1; /* Chiếm 1 phần nhỏ */
    display: flex;
    flex-direction: column;
}

.small-card img {
    width: 100%;
    height: 250px;
    object-fit: cover;
}

.large-card {
    flex: 2; 
    display: flex;
    flex-direction: column;
}

.large-card img {
    width: 100%;
    height: 500px;
    object-fit: cover;
}

.text {
    padding: 15px;
}

.text h3 {
    font-size: 18px;
    margin-bottom: 10px;
    color: #333;
}

.text .date {
    font-size: 14px;
    color: #999;
    margin-bottom: 10px;
}

.text p {
    font-size: 14px;
    color: #555;
}


</style>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <div class="small-card">
            <img src="../image/gt1.jpg" alt="Ảnh nhỏ">
            <div class="text">
                <h3>NGƯỢC LÊN TÂY BẮC GÓI VỊ MỘC VỀ XUÔI</h3>
                <p class="date">06/01/2024</p>
                <p>Khám phá hương vị cà phê đích thực, với 3 lựa chọn hấp dẫn: Cà phê đen đậm đà,
                cà phê dừa thơm béo và cà phê vani ngọt ngào, mỗi ngụm đều là một trải nghiệm tuyệt
                vời. Còn chần chờ gì nữa, hãy đến và tận hưởng không gian ấm cúng, cùng nhâm nhi ly cà phê
                yêu thích của bạn☕.
                </p>
            </div>
        </div>  
        <div class="large-card">
            <img src="../image/gt4.jpg" alt="Ảnh lớn">
            <div class="text">
                <h3>KHÓA HỌC TRÀ HIỆN ĐẠI</h3>
                <p class="date">06/01/2024</p>
                <p>Nội dung khóa học:
					Giới thiệu về trà
					- Kỹ thuật pha trà
					- Công thức pha chế trà sáng tạo
					- Thưởng thức trà
					- Kinh doanh trà.
					Đăng ký ngay để bắt đầu hành trình khám phá thế giới trà đầy thú vị!</p>
            </div>
        </div>
    </div>
    
    <style>
    
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
}

.container {
    width: 90%;
    margin: 20px auto;
}

.logo h1 {
    font-size: 24px;
    color: #000;
    margin-bottom: 20px;
}

.logo .highlight {
    color: orange;
    font-weight: bold;
    font-size: 32px;
    margin-right: 10px;
}

.content {
    display: flex;
    gap: 20px;
}

.left-column {
    flex: 3;
}

.post {
    display: flex;
    margin-bottom: 20px;
    background-color: #fff;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.post img {
    width: 120px;
    height: 120px;
    object-fit: cover;
    flex-shrink: 0;
}

.post-text {
    padding: 10px;
}

.post-text h3 {
    font-size: 16px;
    margin-bottom: 5px;
    color: #333;
}

.post-text .date {
    font-size: 14px;
    color: #999;
    margin-bottom: 5px;
}

.post-text p {
    font-size: 14px;
    color: #555;
}

/* Cột ảnh lớn bên phải */
.right-column {
    flex: 2;
}

.right-column img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
    
    </style>
     <div class="container">
        
        <div class="logo">
            <h1><span class="highlight">|</span> Tin nổi bật</h1>
        </div>

        <div class="content">
        
            <div class="left-column">
                <div class="post">
                    <img src="../image/tin2.jpg" alt="../image 1">
                    <div class="post-text">
                        <h3>TRÀ XANH LATTE</h3>
                        <p>Bạn đã từng uống món này? Nooo thử ngay món cũ nhưng hương vị mới...</p>
                    </div>
                </div>
                <div class="post">
                    <img src="../image/tin1.jpg" alt="../image 2">
                    <div class="post-text">
                        <h3>MUA ONE TẶNG ONE😱</h3>
                        <p>Chương trình khuyến mãi chỉ áp dụng đến hết ngày 31/01/2024 còn chần chờ gì nữa mà không qua liền hmmm...</p>
                    </div>
                </div>
                <div class="post">
                    <img src="../image/tin3.jpg" alt="../image 3">
                    <div class="post-text">
                        <h3>GÌ ĐÂY??? MÓN MỚI ĐÓ CÁC TÌNH IU ỚI !!!</h3>
                        <p>Siêu phẩm sắp ra mắt, cùng đón chờ ngày món mới được ghi trong menu nào🤜🤛</p>
                    </div>
                </div>
                
                <div class="post">
                    <img src="../image/tin5.jpg" alt="../image 3">
                    <div class="post-text">
                        <h3>TRÀ HOA QUẢ NGẬP TOPPING</h3>
                        <p>Vì một mùa hè luôn fresh "Cho em order một ly trà vải ngọt ngào"</p>
                    </div>
                </div>
                
                <div class="post">
                    <img src="../image/tin6.jpg" alt="../image 3">
                    <div class="post-text">
                        <h3>COMBO SIÊU SALE CHỈ 180K VỚI MATCHA SIÊU REAL :33</h3>
                        <p>Khắp Hà Nội duy nhất mỗi tiệm tui có combo siêu hời này thôi nè</p>
                    </div>
                </div>
                
                
            </div>

           
            <div class="right-column">
                <img src="../image/tin4.jpg" alt="Large ../image">
            </div>
        </div>
    </div>
    <jsp:include page="Footer.jsp" />
</body>
</html>

 