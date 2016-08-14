<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>

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
<meta charset="utf-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>Đăng Ký Khám</title>
<!-- InstanceEndEditable -->
<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet" type="text/css" >
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/normalize.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/vicons-font.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/buttons.css"/>" rel="stylesheet" type="text/css">
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
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

<div class="clean0"></div>
<br/>
<!-- <div class="container">

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
</div>container--><!-- InstanceBeginEditable name="EditRegion1" -->

<div class="container">
	<!----------------- DANG KY KHAM ------------------->
  <div class=" col-lg-12 tieude">
    <p> Đăng Ký Khám </p>
  </div>
  
  <div class ="dangky">
    <form name="dang_ky_kham" method="post" action="">
        <!------------ MA BENH NHAN ----------------->
        <p>
            <label for="mabenhnhan">Mã Bệnh Nhân:</label>
            <input type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="20" />
        </p>
        
        <!------------ Loai Kham ----------------->
        <p>
            <label for="bacsy">Bác Sỹ: </label>
            <select name="bacsy" id="bacsy" >
                <option>Chọn Bác sỹ:</option>
                <option value="#">Phạm Thị Minh Phương</option>
                <option value="#">Phạm Thị Minh Thư</option>
                <option value="#">Lại Thị Hường</option>
                <option value="#">Phạm Ngọc Hiền</option>
                <option value="#">Lê Hoàng Anh</option>
            </select>
        </p>
        
        <!------------ NGAY KHAM ----------------->
        <p>
          <label for="ngaykham">Ngày Khám:</label>
          <input type="date" name="ngaykham" id="ngaykham" size="30" maxlength="20" />
        </p>
        
        <!------------ GIO KHAM ----------------->
        <p>
          <label for="giokham">Giờ Khám:</label>
          <input type="time" name="giokham" id="giokham" size="30" maxlength="20" />
        </p>
    
        <!------------ Trieu chung ----------------->
        <p>
          <label for="trieuchung">Triệu Chứng: </label>
          <textarea name="trieuchung" cols="100" rows="5" id="trieuchung"></textarea>
        </p>
    
    	<div style="clear:both"></div>
    
        <!------------ Button Chuc Nang ----------------->
        <div class="but_chucnang">
            <!--Button luu-->
            <button type="button" name="" value="" class="but_datlich" data-text="Đặt Lịch"><span>Đặt Lịch</span>
            </button>
            <!-- end button luu-->
            
            <!--Button huy-->
            <button type="button" name="" value="" class="but_datlich" data-text="Huỷ"><span>Huỷ</span>
            </button>
            <!-- end button huy-->
        </div><!--end button chuc nang-->
    </form> <!--end form -->
  </div><!-- end dang ky -->
</div><!--- end container---->
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
