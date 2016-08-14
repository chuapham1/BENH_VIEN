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
   	<form action="j_spring_security_check"  method="post" id="loginform" class="form-signin">
        <div class="col-lg-6 dangnhap">
        	<div class="nhap">
                <div class="ten">Tên Đăng Nhập: </div> 
             
                <input  type='text' name='j_username' value=''  placeholder="Tên Đăng Nhập:">
                   <!--  <input name="username" type="text" value="" size="30" maxlength="20"/> -->
                
            </div><!--end nhap-->
            
            <div class="clean0"></div>
            
            <div class="nhap">
                <div class="ten">Mật khẩu: </div> 
             
               <input  type='password' name='j_password'  placeholder="Mật khẩu:">                 
              
            </div><!--end nhap-->
            
        </div><!--end dangnhap-->
        
        <button type="submit" name="" value="" class="but_dangnhap" data-text="Đăng Nhập"><span>Đăng Nhập</span>
        </button>
        </form>
        <p style ="margin-left: 500px; margin-top: 30px;"> Đăng ký <a href = "<c:url value="/user/registration" />">tại đây</a> nếu bạn chưa có tài khoản</p>
    </div><!--end container-->
</body>
</html>
