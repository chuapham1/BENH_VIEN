<%@ include file="menu.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/templates.dwt" codeOutsideHTMLIsLocked="false" -->
<head>

<!-- InstanceBeginEditable name="doctitle" -->
<title>Thong Tin Benh Nhan</title>
<style type="text/css">
.war {
	color: #FF0000;
}
</style>


<link href="<c:url value="/resources/SpryAssets/SpryValidationCheckbox.css"/>" rel="stylesheet" type="text/css" > 
<link href="<c:url value="/resources/SpryAssets/SpryValidationTextField.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/SpryAssets/SpryValidationSelect.css"/>" rel="stylesheet" type="text/css" >
<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet" type="text/css" >
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/normalize.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/vicons-font.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/buttons.css"/>" rel="stylesheet" type="text/css">

</head>

<body>
<!-- <header>
<div class="container">
	<div class="banner">
    	<h3>Chào mừng bạn đến với hệ thống quản lý bệnh viện</h3>
    </div>banner
    
    <div class="col-md-12 nav">
      <ul>
        <li> <a href="index_Benhnhan.html" class="active">Trang chủ </a></li>
        <li><a href="#">Giới thiệu</a></li>
        <li><a href="#"> Liên hệ </a></li>
        <li> <a href="#">Góp ý</a></li>
      </ul>
    </div>
</div>container
</header> -->
<!-- 
<div class="clean0"></div>
<br/>
<div class="container">

	Thong tin benh nhan
	<div class="but">
    	<a href="ThongTinBenhNhan.html">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Thông tin bệnh  nhân"><span>Thông tin bệnh nhân</span>
        </button></a>
    
    Dang ky kham truc tuyen
		<a href ="DangKyKham.html">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Đăng ký khám trực tuyến"><span>Đăng ký khám trực tuyến</span>
        </button></a>
 
     
     Xem ho so benh an
     	<a href="XemHoSoBenhAn.html">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Xem hồ sơ bệnh án"><span>Xem hồ sơ bệnh án</span>
        </button></a>
     
     Trao doi voi bac sy
     	<a href="TraoDoivoiBacSy.html">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Trao đổi với bác sỹ"><span>Trao đổi với bác sỹ</span>
        </button></a>
     </div>end but
</div>container--><!-- InstanceBeginEditable name="EditRegion1"  -->
<div class="container">

<!--------------------- THONG TIN BENH NHAN ----------------->

  	<div class=" col-lg-12 tieude">
    	<p> Thông Tin Bệnh Nhân </p>
    </div>
    
    <div class="clean0"></div>
    
  <div class="thongtin">
    <form name="form1" method="post" action="">
    
        <!---------------------FORM MA BENH NHAN ----------------------------->
        <p class="dong">
            <label for="ma_benhnhan">Mã Bệnh nhân:</label>
            <input value="${user.userId}" name="ma_benhnhan" type="text" id="ma_benhnhan" size="30" maxlength="50">
         <!--End form ho ten-->
         
         <!---------------------FORM HO TEN ----------------------------->
        <p class="dong">
            <label for="hoten">Họ và tên Bệnh nhân:</label>
            <input value="${user.ho} ${user.ten}" name="hoten" type="text" id="hoten" size="100" maxlength="50">
         <!--End form ho ten-->  
         
        <!---------------------FORM GIOI TINH ----------------------------->
        <p class="dong">
        <label>Gioi Tinh:</label>
        <label>
        <input type="radio" name="gioitinh" value="nam" id="gioitinh_0">
        Nam</label>
        <label>
        <input type="radio" name="gioitinh" value="nu" id="gioitinh_1">
        Nu</label>
        <br>
        </p>
        <!--End form gioi tinh-->
      
        <!---------------------FORM NGAY SINH ----------------------------->
        <p class="dong">
            <label for="ngaysinh">Ngày Sinh:</label>
            <input value="${user.ngaysinh}" name="ngaysinh" type="date" class="btn-group" id="ngaysinh" size="30" maxlength="10">
        </p>
        <!--End form ngay sinh-->
        
        <!---------------------FORM CMND ----------------------------->
        <p class="dong">
            <label for="cmnd">CMND:</label>
            <input value="${user.so_cmnd}" name="cmnd" type="number" id="cmnd" size="30" maxlength="40">
		</p>
        <!--End form CMND-->
        
        <!---------------------FORM SO DIEN THOAI ----------------------------->
        <p class="dong">
            <label for="dienthoai">Điện Thoại:</label>  
            <input value="${user.sdt}" name="dienthoai" type="tel" id="dienthoai" size="30" maxlength="11">
        </p>
        <!--End form Dien thoai 1-->
        
         <!---------------------FORM EMAIL ----------------------------->
        <p class="dong">
            <label for="email">Email:</label>  
            <input value="${user.email}" name="email" type="email" id="email" size="30" maxlength="20">
        </p>
        <!--End form Dien thoai 1-->
      
      	<!---------------------FORM DIA CHI ----------------------------->
        <p class="dong">
            <label for="diachi">Địa Chỉ:</label>
            <input value="${user.diachi}" name="diachi" type="text" id="diachi" size="100" maxlength="200">
        </p>
        <!--End form dia chi-->
        
        <!------------ Button Chuc Nang ----------------->
        <div class="but_chucnang">
            <!--Button chinh sua -->
            <button type="button" name="" value="" class="but_luu" data-text="Chỉnh Sửa"><span>Chỉnh Sửa</span>
            </button>
            <!-- end button chinh sua-->
            
            <!--Button luu-->
            <button type="button" name="" value="" class="but_luu" data-text="Lưu"><span>Lưu</span>
            </button>
            <!-- end button luu-->
            
            <!--Button huy-->
            <button type="button" name="" value="" class="but_luu" data-text="Huỷ"><span>Huỷ</span>
            </button>
            <!-- end button huy-->
        </div><!--end button chuc nang-->
    </form> <!--end form thong tin--> 
  </div><!--end thongtin-->
</div><!--end container-->

<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>