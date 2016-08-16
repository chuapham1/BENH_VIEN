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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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


<div class="clean0"></div>
<br/>

<div class="container">
	<!----------------- DANG KY KHAM ------------------->
  <div class=" col-lg-12 tieude">
    <p> Đăng Ký Khám </p>
  </div>
  
  <div class ="dangky">
   <form:form modelAttribute="dkKham" method="POST"  enctype="utf8">
        <!------------ MA BENH NHAN ----------------->
        <p>
            <label for="mabenhnhan">Mã Bệnh Nhân:</label>
            <form:input path="maBenhNhan"  name="mabenhnhan" id="mabenhnhan" size="30" maxlength="20" />
           <!--  <input type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="20" /> -->
        </p>
        
        <!------------ Loai Kham ----------------->
        <p>
            <label for="bacsy">Bác Sỹ: </label>
            <form:select path="bacsiId">
            <form:options items="${bacsi}" />
           
            </form:select> 
          
        </p>
        
        <!------------ NGAY KHAM ----------------->
        <p>
          <label for="ngaykham">Ngày Khám:</label>
           <form:input path="ngayKham" name="ngaykham" id="ngaykham" size="30" maxlength="20" />
          
        </p>
        
        <!------------ GIO KHAM ----------------->
        <p>
          <label for="giokham">Giờ Khám:</label>
           <form:input path="gioKham" name="giokham" id="giokham" size="30" maxlength="20"/>
         
        </p>
    
        <!------------ Trieu chung ----------------->
        <p>
          <label for="trieuchung">Triệu Chứng: </label>
          <form:textarea path="trieuChung" rows="5" cols="100" />
         
        </p>
    
    	<div style="clear:both"></div>
    
        <!------------ Button Chuc Nang ----------------->
        <div class="but_chucnang">
            <!--Button luu-->
            <input type="submit" value="Đặt Lịch" class="but_datlich" />
            <!-- <button type="button" name="" value="" class="but_datlich" data-text="Đặt Lịch"><span>Đặt Lịch</span>
            </button> -->
         
        </div><!--end button chuc nang-->
   </form:form> <!--end form -->
  </div><!-- end dang ky -->
</div><!--- end container---->
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
