
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="utf-8">
<title>Trang Chủ</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet">


<link href="<c:url value="/resources/css/normalize.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/vicons.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/buttons.css"/>" rel="stylesheet">



<link href="<c:url value="/resources/SpryAssets/SpryValidationCheckbox.css"/>" rel="stylesheet" type="text/css" > 

<link href="<c:url value="/resources/SpryAssets/SpryValidationTextField.css"/>" rel="stylesheet" type="text/css">


<link href="<c:url value="/resources/SpryAssets/SpryValidationSelect.css"/>" rel="stylesheet" type="text/css" >

<link href="<c:url value="/resources/css/vicons-font.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/buttons.css"/>" rel="stylesheet" type="text/css">

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
<header>
<div class="container">
	<div class="banner">
    	<h3>Chào mừng bạn đến với hệ thống quản lý bệnh viện</h3>
    </div><!--banner-->
    
    <div class="dangxuat">
      		<a href="#">Đăng Xuất</a>
    </div><!---end dangxuat-->
    
    <div class="col-md-12 nav">
      <ul>
        <li> <a href="index_Benhnhan.html" class="active">Trang chủ </a></li>
        <li><a href="#">Giới thiệu</a></li>
        <li><a href="#"> Liên hệ </a></li>
        <li> <a href="#">Góp ý</a></li>
      </ul>
    </div><!-- end nav--->
</div><!-- end container-->
</header>

<div class="clean0"></div>
<br/>
<div class="container">

	<!--Thong tin benh nhan-->
	<div class="but">
    	<a href="<c:url value="/thongtinbenhnhan" />">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Thông tin bệnh  nhân"><span>Thông tin bệnh nhân</span>
        </button> </a>
    
    <!--Dang ky kham truc tuyen-->
		<a href="<c:url value="/dangkykham" />">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Đăng ký khám trực tuyến"><span>Đăng ký khám trực tuyến</span>
        </button></a>
 
     
     <!--Xem ho so benh an-->
     	<a href="<c:url value="/xemhosobenhan" />">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Xem hồ sơ bệnh án"><span>Xem hồ sơ bệnh án</span>
        </button></a>
     
     <!--Trao doi voi bac sy-->
     	<a href="<c:url value="/traodoivoibacsy" />">
        <button type="button" name="" value="" class="col-md-3 button--winona button--border-thin button--round-s" data-text="Trao đổi với bác sỹ"><span>Trao đổi với bác sỹ</span>
        </button></a>
     </div><!--end but-->
</div><!--container-->
