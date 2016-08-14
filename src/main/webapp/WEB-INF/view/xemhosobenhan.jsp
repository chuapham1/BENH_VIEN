<%@ include file="menu.jsp"%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
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
<title>Xem Hồ Sơ Bệnh Án</title>
<!-- InstanceEndEditable -->
<link href="<c:url value="/resources/css/vicons-font.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/normalize.css"/>" rel="stylesheet" type="text/css">
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
</header>
 -->
<div class="clean0"></div>
<br/>

<div class="container">
    <div class=" col-lg-12 tieude">
        <p> Hồ Sơ Bệnh Án</p>
    </div> <!--end tieu de-->
  
    <div class="clean0"></div>
    
    <div class="xemhoso">
      <form name="xemhoso" method="post" action="">
        <p>
          <label for="mabn">Mã Bệnh Nhân:</label>
          <input name="mabn" type="text" id="mabn" size="30" maxlength="20">
        <p>
          <label for="tenbn">Tên Bệnh Nhân: </label>
          <input name="tenbn" type="text" id="tenbn" size="50" maxlength="50" readonly>
        </p>
        <p>
          <label for="ngaysinh_hs">Ngày Sinh: </label>
          <input name="ngaysinh_hs" type="text" id="ngaysinh_hs" size="50" maxlength="20" readonly>
        </p>
        <p>
          <label for="tuoi">Tuổi: </label>
          <input name="tuoi" type="text" id="tuoi" size="20" maxlength="10" readonly>
        </p>
        <p>
          <label for="diachi_hs">Địa Chỉ: </label>
          <input name="diachi_hs" type="text" id="diachi_hs" size="100" maxlength="50" readonly>
        </p>
        
        <p>
        	<label>DANH SÁCH BỆNH ÁN: </label>
        </p>
        <p>&nbsp; </p>

        <div style="height:100px; width:95%;overflow:auto; float:left; margin-bottom:30px">
            <table width="100%" border="1" cellspacing="2">
              <tr>
                <th width="4%">STT</th>
                <th width="10%">Mã Bệnh Án</th>
                <th width="13%">Bác Sỹ Tiếp Nhận</th>
                <th width="14%">Ngày Nhập Viện</th>
                <th width="14%">Ngày Xuất Viện</th>
                <th width="18%">Tình Trạng Nhập Viện</th>
                <th width="15%">Chẩn Đoán Ban Đầu</th>
                <th width="12%">Loại Điều Trị</th>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
        </div>
        <button type="button" name="" value="" class="but_xem" data-text="Xem Chi Tiết"><span>Xem Chi Tiết</span></button>
      </form>
      <div class="clean0"></div>
	  <label style="float:none; font-size:24px; font-weight:bold;">CHI TIẾT : </label>
      <br>
      <div class="ngay_ctba">
      	<!------------ NGAY KHAM----------------->
        <p>
            <label for="ngaykham">Ngày Khám: </label>
            <select name="ngaykham" id="ngaykham" >
                <option>Chọn Ngày Khám:</option>
                <option value="#">01/08/2016</option>
                <option value="#">02/08/2016</option>
                <option value="#">03/08/2016</option>
                <option value="#">04/08/2016</option>
                <option value="#">05/08/2016</option>
            </select>
        </p>
        
        <!---------------------FORM MA CHI TIET BENH AN ----------------------------->
        <p class="dong">
            <label for="machitiet">Mã Số:</label>
            <input name="machitiet" type="text" id="machitiet" size="30" maxlength="40" readonly>
		</p>
        
        <!---------------------FORM TEN BAC SY ----------------------------->
        <p class="dong">
            <label for="tenbacsy">Bác sỹ tiếp nhận:</label>
            <input name="tenbacsy" type="text" id="tenbacsy" size="30" maxlength="40" readonly>
		</p>
        
        <!---------------------FORM MA BAC SY ----------------------------->
        <p class="dong">
            <label for="mabacsy">Mã Bác Sỹ:</label>
            <input name="mabacsy" type="text" id="mabacsy" size="30" maxlength="40" readonly>
		</p>
        
        <!---------------------FORM CHAN DOAN ----------------------------->
        <p class="dong">
            <label for="chandoan">Chẩn Đoán:</label>
            <input name="chandoan" type="text" id="chandoan" size="50" maxlength="100" readonly>
		</p>
        
        <label style="float:none; font-size:16px;">Cận Lâm Sàng : </label>
        <table width="49%" border="1" cellspacing="2">
              <tr>
                <th width="15%">Mã Số</th>
                <th width="33%">Nội Dung Thực Hiện</th>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <tr> 
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
        
        <br>
        <label style="float:none; font-size:16px;">TOA THUỐC : </label>
        
        <!---------------------FORM MA TOA THUOC ----------------------------->
        <p class="dong">
            <label for="matoa">Mã Toa:</label>
            <input name="matoa" type="text" id="matoa" size="30" maxlength="40" readonly>
		</p>
        
        <table width="80%" border="1" cellspacing="2">
              <tr>
                <th width="19%">Mã Thuốc</th>
                <th width="33%">Tên Thuốc</th>
                <th width="23%">Số lượng</th>
                <th width="26%">Liều dùng</th>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <tr> 
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
      </div><!------end ngay_ctba---->
  </div><!----end xem ho so---->
</div><!----end container --->
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
