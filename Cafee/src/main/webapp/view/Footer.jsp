<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Footer</title>
    <style>
     
.footer {
    background-color: #2c2c2c;
    color: #ffffff;
    padding: 40px 0;
    font-family: Arial, sans-serif;
}

/* Container chính */
.footer-container {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    flex-wrap: wrap;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* Các phần trong footer */
.footer-section {
    flex: 1 1 30%;
    margin: 10px;
    text-align: center;
}

.footer-section h3 {
    font-size: 20px;
    margin-bottom: 15px;
    color: #f1c40f;
    text-transform: uppercase;
}

.footer-section p {
    font-size: 14px;
    line-height: 1.8;
    margin-bottom: 15px;
}

.footer-section ul {
    list-style: none;
    padding: 0;
    font-size: 14px;
    line-height: 1.8;
}

.footer-section ul li {
    margin-bottom: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.footer-section ul li i {
    margin-right: 10px;
    color: #f1c40f;
}

.footer-section ul li a {
    color: #ffffff;
    text-decoration: none;
}

.footer-section ul li a:hover {
    text-decoration: underline;
}

/* Mạng xã hội */
.social-media {
    display: flex;
    justify-content: center;
    gap: 15px;
}

.social-media a {
    color: #f1c40f;
    font-size: 18px;
    transition: color 0.3s ease;
}

.social-media a:hover {
    color: #ffffff;
}

/* Phần cuối */
.footer-bottom {
    text-align: center;
    padding: 20px 0;
    border-top: 1px solid #444444;
    font-size: 14px;
    margin-top: 20px;
    color: #bbbbbb;
}
     
    </style>
</head>
<body>
    <footer class="footer">
        <div class="footer-container">
           
            <div class="footer-section">
                <h3>Về chúng tôi</h3>
                <p>Chúng tôi cung cấp những ly cà phê ngon nhất, được chọn lọc từ những hạt cà phê chất lượng cao.</p>
            </div>
            
            <div class="footer-section">
                <h3>Liên hệ</h3>
                <ul>
                    <li><i class="fas fa-envelope"></i> Email: support@cafe.com</li>
                    <li><i class="fas fa-phone"></i> Điện thoại: 0123 456 789</li>
                    <li><i class="fas fa-map-marker-alt"></i> Địa chỉ: 123 Đường Cà Phê, Quận 1, TP. HCM</li>
                </ul>
            </div>
            
            <div class="footer-section">
                <h3>Theo dõi chúng tôi</h3>
                <p>Kết nối với chúng tôi qua các nền tảng:</p>
                <div class="social-media">
                    <a href="#" class="social-icon"><i class="fab fa-facebook"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>© 2025 Cà Phê Việt</p>
        </div>
    </footer>
</body>
</html>
