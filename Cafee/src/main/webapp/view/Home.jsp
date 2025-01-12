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
<div style="display: flex; align-items: center; justify-content: space-between; padding: 40px; background-color: #f9f9f9; border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
    <img src="../image/biajpg.jpg" 
         style="width: 40%; height: auto; border-radius: 20px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);" alt="Banner">

    <div style="width: 55%; padding-left: 20px;">
        <h2 style="color: #6f4e37; font-size: 28px; margin-bottom: 20px;">Hương vị mùa hè tươi mát cùng Oola</h2>
        <p style="line-height: 1.8; color: #444; font-size: 16px;">
            Mùa hè này, Oola mang đến cho bạn những trải nghiệm giải nhiệt tuyệt vời với bộ sưu tập đồ uống mới đầy màu sắc và hấp dẫn. Với bốn hương vị độc đáo, Oola sẽ làm hài lòng mọi khẩu vị, từ những tín đồ của trái cây đến những người yêu thích vị đắng nhẹ của matcha:
        </p>
        <ul style="line-height: 1.8; color: #555; font-size: 16px; list-style-type: square; padding-left: 20px;">
            <li><b>Cốm dừa đá xay:</b> Món tráng miệng truyền thống được làm mới với lớp đá xay mịn màng, kết hợp cùng vị béo ngậy của dừa tươi và hương thơm đặc trưng của cốm.</li>
            <li><b>Ô long dâu Đà Lạt:</b> Sự kết hợp độc đáo giữa ô long đậm đà và vị ngọt ngào của dâu tây Đà Lạt tươi mát sẽ mang đến cho bạn một trải nghiệm vị giác khó quên.</li>
            <li><b>Matcha đá xay:</b> Những tín đồ của matcha chắc chắn sẽ không thể bỏ qua món đồ uống này. Matcha đá xay với lớp kem mịn màng và vị đắng nhẹ đặc trưng sẽ giúp bạn thư giãn và tỉnh táo.</li>
            <li><b>Ô long chanh vàng:</b> Với hương thơm dịu nhẹ của trà ô long và vị chua thanh của chanh vàng, món đồ uống này sẽ là lựa chọn hoàn hảo để giải nhiệt trong những ngày hè nóng bức.</li>
        </ul>
    </div>
</div>

<div style="text-align: center; font-size: 20px; font-weight: bold; margin-top: 40px; margin-bottom: 20px; color: #6f4e37;"> TOP BEST SELLER</div>

<div style="display: flex; flex-wrap: wrap; justify-content: center; gap: 20px; padding: 20px;">
  
    <div style="width: 200px; text-align: center; background: #fff; border-radius: 10px; padding: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
        <img src="../image/toptop.jpg" alt="" style="width: 100%; border-radius: 10px; transition: transform 0.3s;">
        <h5 style="color: #6f4e37; margin: 10px 0;">Cocktail nhiệt🍈</h5>
        <p style="color: #444; font-size: 16px;">49.000 đ</p>
    </div>

   
    <div style="width: 200px; text-align: center; background: #fff; border-radius: 10px; padding: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
        <img src="../image/top1.jpg" alt="" style="width: 100%; border-radius: 10px; transition: transform 0.3s;">
        <h5 style="color: #6f4e37; margin: 10px 0;">Coffee vải tươi☕</h5>
        <p style="color: #444; font-size: 16px;">79.000 đ</p>
    </div>

   
    <div style="width: 200px; text-align: center; background: #fff; border-radius: 10px; padding: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
        <img src="../image/top2longanh.jpg" alt="" style="width: 100%; border-radius: 10px; transition: transform 0.3s;">
        <h5 style="color: #6f4e37; margin: 10px 0;">Chanh dây ép🍋</h5>
        <p style="color: #444; font-size: 16px;">49.000 đ</p>
    </div>

 
    <div style="width: 200px; text-align: center; background: #fff; border-radius: 10px; padding: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
        <img src="../image/ww.jpg" alt="" style="width: 100%; border-radius: 10px; transition: transform 0.3s;">
        <h5 style="color: #6f4e37; margin: 10px 0;">Chanh 3Q🍋</h5>
        <p style="color: #444; font-size: 16px;">89.000 đ</p>
    </div>
    
    <div style="width: 200px; text-align: center; background: #fff; border-radius: 10px; padding: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
        <img src="../image/cam.jpg" alt="" style="width: 100%; border-radius: 10px; transition: transform 0.3s;">
        <h5 style="color: #6f4e37; margin: 10px 0;">Nước ép cam🍊</h5>
        <p style="color: #444; font-size: 16px;">59.000 đ</p>
    </div>
</div>



<div style="display: flex; align-items: center; justify-content: space-between; padding: 40px; background-color: #f9f9f9; border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
    <div style="width: 50%;">
        <h2 style="color: #6f4e37; font-size: 28px; margin-bottom: 20px;">OOLA Ở ĐÂY CHỨ ĐÂU👉</h2>
        <p style="line-height: 1.8; color: #444; font-size: 16px;">
            Nhà mới tọa lạc tại The Grace Tower thuộc tuyến đường nhộn nhịp và sầm uất tại Số 2 Phan Đình Phùng. Ghé Nhà cà phê nha!
        </p>
    </div>
    <div style="width: 45%; position: relative;">
        <img src="../image/quan.jpg" style="width: 100%; height: auto; border-radius: 20px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);" alt="The Coffee House Grace Tower">
    </div>
</div>
<jsp:include page="Footer.jsp" />
