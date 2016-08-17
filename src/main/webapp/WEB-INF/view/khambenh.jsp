<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    
    
    
    
    <div class="clean0"></div>  
      <div class="thongtin_kb">
          <form id="tt_kham_benh" name="kham_benh" method="post" action="">
          
          	<!------------ FORM MA BENH NHAN ----------------->
            <p>
              <label for="mabenhnhan">Mã Bệnh Nhân:</label>
              <input value="${khamBenh.benhnhan_id}" type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="11"  readonly="readonly"/>
            </p>
            
            <!------------ FORM HO TEN BENH NHAN ----------------->
            <p>
              <label for="hoten">Họ Tên Bệnh Nhân:</label>
              <input value="${khamBenh.ho} ${khamBenh.ten}"  type="text" name="hoten" id="hoten"  size="40" readonly="readonly"/>
            </p>
            
            <!------------ FORM TRIEU CHUNG ----------------->
            <p>
              <label for="trieuchung">Triệu Chứng:</label>
             
              <input value="${khamBenh.trieuchung}" name="trieuchung" id="trieuchung"  readonly="readonly" />
            </p>
          </form>
      </div><!---end thongtin_kb--->

      <div class="clean0"></div>
      	
      <div class="khambenh">
      	<form:form modelAttribute="khamBenh" method="POST"  enctype="utf8">
        	
            <!------------ FORM NGAY KHAM ----------------->
            <p>
              <label for="ngaykham">Ngày khám: </label>
              <form:input path="ngayKham" name="ngaykham" id="ngaykham" size="30" maxlength="20" />
            </p>
        	
            <!------------ FORM MO TA ----------------->
            <p>
              <label for="mota">Mô tả bệnh: </label>
               <form:input path="moTaBenh" name="ngaykham" id="ngaykham" size="75" maxlength="200" />
             
            </p>
            
       	  <!------------ FORM CHAN DOAN ----------------->
            <p>
              <label for="chandoan">Chẩn đoán: </label>
               <form:input path="chuanDoan" name="ngaykham" id="ngaykham" size="75" maxlength="200" />
            </p>
            
            <!------------ FORM NOI/NGOAI TRU ----------------->
            <p>
                <label for="loaidieutri">Loại Điều Trị: </label>
                <form:checkbox path="loaiDieuTri" />
            </p>
            
            <!------------ FORM NGAY XUAT VIEN ----------------->
          	<p>
              <label for="ngaynhapvien">Ngày Xuất viện: </label>
               <form:input path="chuanDoan" name="ngaykham" id="ngaykham" size="30" maxlength="20" />
             
            </p>
            
            <!------------ FORM DAN DO ----------------->
  	  	  <p>
            <label for="dando">Dặn dò: </label>
              <form:input path="danDo" name="ngaykham" id="ngaykham" size="75" maxlength="100" />
           
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
                <label for="cachdung">Số Lượng: </label>
                <input type="text"  size="50" maxlength="100"/>
            </p>
            
         
      	 </form:form>
        <button type="button" name="" value="" class="but_luuthuoc" data-text="Lưu"><span>Lưu</span></button>
      </div><!----- end khambenh --->
    </div><!---end container-->
    <!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>