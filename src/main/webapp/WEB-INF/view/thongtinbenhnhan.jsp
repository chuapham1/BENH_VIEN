<%@ include file="menu.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
<div class="container">

<!--------------------- THONG TIN BENH NHAN ----------------->

  	<div class=" col-lg-12 tieude">
    	<p> Thông Tin Bệnh Nhân </p>
    </div>
    
    <div class="clean0"></div>
    
  <div class="thongtin">
  	<form:form modelAttribute="benhNhan" method="POST" class="form-horizontal" novalidate="novalidate" enctype="utf8">
   <!--  <form name="form1" method="post" action=""> -->
    
        <!---------------------FORM MA BENH NHAN ----------------------------->
        <p class="dong">
            <label for="ma_benhnhan">Mã Bệnh nhân:</label>
            <form:input path="benhnhan_id" value="" name="ma_benhnhan" type="text" id="ma_benhnhan" size="30" maxlength="50" />
         <!--End form ho ten-->
         
         <!---------------------FORM HO TEN ----------------------------->
        <p class="dong">
            <label for="hoten">Họ Bệnh nhân:</label>
            <form:input path="ho" name="hoten" type="text" id="hoten" size="100" maxlength="50" />
            
         <p class="dong">
            <label for="hoten">Tên Bệnh nhân:</label>
            <form:input path="ten" name="hoten" type="text" id="hoten" size="100" maxlength="50" />
         <!--End form ho ten-->  
         
        <!---------------------FORM GIOI TINH ----------------------------->
        <p class="dong">
        <label>Gioi Tinh:</label>
        <label>
         <form:checkbox path="gioitinh" />
       <!--  <input type="radio" name="gioitinh" value="nam" id="gioitinh_0"> -->
        </label>
    <!--     <label>
        <input type="radio" name="gioitinh" value="nu" id="gioitinh_1">
        Nu</label> -->
        <br>
        </p>
        <!--End form gioi tinh-->
      
        <!---------------------FORM NGAY SINH ----------------------------->
        <p class="dong">
            <label for="ngaysinh">Ngày Sinh:</label>
            <form:input path="ngaysinh" name="ngaysinh" type="text" class="btn-group" id="ngaysinh" size="30" maxlength="10" />
        </p>
        <!--End form ngay sinh-->
        
        <!---------------------FORM CMND ----------------------------->
        <p class="dong">
            <label for="cmnd">CMND:</label>
            <form:input path="so_cmnd" name="cmnd" type="text" id="cmnd" size="30" maxlength="40" />
		</p>
        <!--End form CMND-->
        
        <!---------------------FORM SO DIEN THOAI ----------------------------->
        <p class="dong">
            <label for="dienthoai">Điện Thoại:</label>  
            <form:input path="sdt" name="dienthoai" type="text" id="dienthoai" size="30" maxlength="11" />
        </p>
        <!--End form Dien thoai 1-->
        
         <!---------------------FORM EMAIL ----------------------------->
        <!-- <p class="dong">
            <label for="email">Email:</label>  
            <input path="sdt" name="email" type="email" id="email" size="30" maxlength="20">
        </p> -->
        <!--End form Dien thoai 1-->
      
      	<!---------------------FORM DIA CHI ----------------------------->
        <p class="dong">
            <label for="diachi">Địa Chỉ:</label>
            <form:input path="diachi" name="diachi" type="text" id="diachi" size="100" maxlength="200" />
        </p>
        <!--End form dia chi-->
        
        <!------------ Button Chuc Nang ----------------->
        <div class="but_chucnang">
            <!--Button chinh sua -->
            
            <!-- end button chinh sua-->
            
            <!--Button luu-->
            <input type="submit" value="Lưu" class="but_luu" />
         
        </div><!--end button chuc nang-->
   </form:form> <!--end form thong tin--> 
  </div><!--end thongtin-->
</div><!--end container-->

<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>