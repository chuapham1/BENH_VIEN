<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Quản lý bệnh viện</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet">

</head>

<body>
	<header>
    	<div class="container">
    	<p class="loichao">XIN CHÀO, MỜI BẠN ĐĂNG NHẬP ĐỂ TRUY CẬP VÀO HỆ THỐNG</p>
        </div>
    </header>
    
   	<div class="container">
        <div class="col-lg-6 dangnhap">
        	<div class="nhap">
                <div class="ten">Tên Đăng Nhập: </div> 
                <form action="#">
                    <input name="username" type="text" value="" size="30" maxlength="20"/>
                </form>
            </div><!--end nhap-->
            
            <div class="clean0"></div>
            
            <div class="nhap">
                <div class="ten">Mật khẩu: </div> 
                <form action="#">
                    <input name="username" type="password" value="" size="30" maxlength="30"/>
                </form>
            </div><!--end nhap-->
            
            <!--<p style="color:#FF0000; margin-left: 20px">** Tên đăng nhập và Mật khẩu là số CMND của bạn</p>-->
        </div><!--end dangnhap-->
        
        <button type="button" name="" value="" class="but_dangnhap" data-text="Đăng Nhập"><span>Đăng Nhập</span>
        </button>
        <p style ="margin-left: 500px; margin-top: 30px;"> Đăng ký <a href = "<c:url value="/user/registration" />">tại đây</a> nếu bạn chưa có tài khoản</p>
    </div><!--end container-->
</body>
</html>
