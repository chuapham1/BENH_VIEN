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
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/templates_bsy.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Khám Bệnh</title>
<!-- InstanceEndEditable -->

<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet" type="text/css" >
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/buttons.css"/>" rel="stylesheet" type="text/css">

<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body>
    <header>
    <div class="container">
        <div class="banner">
            <h3>Xin Chào, Bạn đã truy cập vào hệ thống thành công</h3>
        </div><!--end banner-->
        
        <div class="dangxuat">
      		<a href="#">Đăng Xuất</a>
        </div><!---end dangxuat-->
        	
        <div class="col-md-12 nav">
            <ul>
                <li> <a href="index_Bacsy.html" class="active">Trang chủ </a></li>
                <li><a href="BS_khambenh.html">Khám Bệnh</a></li>
                <li><a href="BS_henlichkham.html">Hẹn Lịch Khám</a></li>
            </ul>
                
            <div class="clean0"></div>
        </div><!-- end nav--->
    </div><!--end container--->            
    </header>
    <!-- InstanceBeginEditable name="noidungchinh" -->
    <div class="container">
   	  <div class=" col-lg-12 tieude">
    		<p> Khám Bệnh </p>
   	  </div>
    
    <div style="height:150px; width: 70%;overflow:auto; float:left;">
		<table width="100%" border="1">
        	<tr>
            	<th width="16%">STT</th>
                <th width="29%">Mã Bệnh Nhân</th>
                <th width="24%">Họ</th>
                <th width="31%">Tên</th>
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
	</div><!---end div table---> 
    <button type="button" name="" value="" class="but_kham" data-text="Khám"><span>Khám</span></button>
    
    <div class="clean0"></div>  
      <div class="thongtin_kb">
          <form id="tt_kham_benh" name="kham_benh" method="post" action="">
          
          	<!------------ FORM MA BENH NHAN ----------------->
            <p>
              <label for="mabenhnhan">Mã Bệnh Nhân:</label>
              <input type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="11" />
            </p>
            
            <!------------ FORM HO TEN BENH NHAN ----------------->
            <p>
              <label for="hoten">Họ Tên Bệnh Nhân:</label>
              <input type="text" name="hoten" id="hoten"  size="40" readonly="readonly"/>
            </p>
            
            <!------------ FORM TRIEU CHUNG ----------------->
            <p>
              <label for="trieuchung">Triệu Chứng:</label>
              <textarea name="trieuchung" cols="80" rows="5" id="trieuchung" readonly="readonly"></textarea>
            </p>
          </form>
      </div><!---end thongtin_kb--->

      <div class="clean0"></div>
      	
      <div class="khambenh">
      	<form id="khambenh" name="khambenh" method="post" action="">
        	
            <!------------ FORM NGAY KHAM ----------------->
            <p>
              <label for="ngaykham">Ngày khám: </label>
              <input type="date" name="ngaykham" id="ngaykham" size="30" maxlength="20" readonly="readonly"/>
            </p>
        	
            <!------------ FORM MO TA ----------------->
            <p>
              <label for="mota">Mô tả bệnh: </label>
              <input type="text" name="mota" id="mota" size="75" maxlength="200" />
            </p>
            
       	  <!------------ FORM CHAN DOAN ----------------->
            <p>
              <label for="chandoan">Chẩn đoán: </label>
              <input type="text" name="chandoan" id="chandoan" size="75" maxlength="100" />
            </p>
            
            <!------------ FORM NOI/NGOAI TRU ----------------->
            <p>
                <label for="loaidieutri">Loại Điều Trị: </label>
                <select name="loaidieutri" id="loaidieutri" >
                  <option value="#">Ngoại Trú</option>
                    <option value="#">Nội Trú</option>
                </select>
            </p>
            
            <!------------ FORM NGAY NHAP VIEN ----------------->
          	<p>
              <label for="ngaynhapvien">Ngày khám: </label>
              <input type="date" name="ngaynhapvien" id="ngaynhapvien" size="30" maxlength="20" readonly="readonly"/>
            </p>
            
            <!------------ FORM DAN DO ----------------->
  	  	  <p>
            <label for="dando">Dặn dò: </label>
            <input type="text" name="dando" id="dando" size="75" maxlength="100" readonly="readonly"/>
          </p>
            
       	  <p style="font-size:20px; font-weight:bold; color:#009">TOA THUỐC</p>
            
            <!------------ FORM TEN THUOC ----------------->
  	  	  	<p>
            <label for="tenthuoc">Tên Thuốc: </label>
            <input type="text" name="tenthuoc" id="tenthuoc" size="50" maxlength="100"/>
            </p>
            
            <!------------ FORM DON VI TINH	 ----------------->
            <p>
                <label for="donvitinh">Đơn Vị Tính: </label>
                <select name="donvitinh" id="donvitinh" >
                  <option value="#">Viên</option>
                  <option value="#">Gói</option>
                  <option value="#">Tuýp</option>
                </select>
            </p>
            
            <!------------ FORM CACH DUNG ----------------->
          <p>
                <label for="cachdung">Cách Dùng: </label>
                <select name="cachdung" id="cachdung" >
                  <option value="#">Uống</option>
                  <option value="#">Dùng ngoài da</option>
                  <option value="#">Ngậm</option>
                </select>
            </p>
            
            <!------------ FORM DAN DO ----------------->
  	  	  	<p>
            <label for="dando">Dặn Dò: </label>
            <input type="text" name="dando" id="dando" size="75" maxlength="100"/>
  	  	  	</p>
      	</form>
        <button type="button" name="" value="" class="but_luuthuoc" data-text="Lưu"><span>Lưu</span></button>
      </div><!----- end khambenh --->
    </div><!---end container-->
    <!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
