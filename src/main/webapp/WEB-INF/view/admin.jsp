<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> --%>


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

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin</title>
<!-- <link href="css/default.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" /> -->

<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet" type="text/css" >
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
</head>

<body>
<div style="width: 100%; height: 50px; background-color: #CCC;">
	<p style=" color:#FFF; font-size:16px; padding-left: 30px; margin-left::40px; line-height: 50px;"> ADMIN </p>
</div>

<div class="dangxuat">
    <a href="<c:url value="/j_spring_security_logout" />">Đăng Xuất</a>
      		<!-- <a href="#">Đăng Xuất</a> -->
    </div><!---end dangxuat-->

<div class="container">
	<div class=" col-lg-12 tieude">
    	<p> Đăng Ký Mới </p>
  	</div>
    <form:form modelAttribute="user" method="post" id="registerform" class="form-signin" novalidate="novalidate"  enctype="utf8">
    <div class="thongtin_kb">
        <!---------------- MA BAC SY ----------------->
		<p>
          <label for="mabacsy">Email Bác Sỹ: </label>
          <form:input path="email" value=""  size="30"  type="text"  name="ho" placeholder="Nhập email"/>        
		</p>
        
        <!---------------- MA BAC SY ----------------->
         <p>
          <label for="mabacsy">Password: </label>
           <form:input path="password" value=""  size="30"  type="text"  name="ho" placeholder="Nhập mat khau"/>
         
        </p> 
        
		<p>
			<label for="mabacsy">RePassword: </label>
			<form:input path="rePassword" value=""  size="30"  type="text"  name="ho" placeholder="Nhập lai mat khau"/>
		</p> 
        
        <!---------------- HO BAC SY ----------------->
        <p>
          <label for="ho">Họ: </label>
           <form:input path="ho" value=""  size="30"  type="text"  name="ho" placeholder="Nhập họ"/>
        <!--   <input type="text" name="ho" id="ho" size="30" placeholder="Nhập họ" /> -->
        </p>
        
        <!---------------- TEN BAC SY ----------------->
        <p>
          <label for="ten">Tên: </label>
           <form:input path="ten" value=""  size="30"  type="text"  name="ten" placeholder="Nhập tên"/>
        </p>
        
        <!---------------- SO DIEN THOAI BAC SY ----------------->
        <p>
          <label for="sodt">Số điện thoại: </label>
           <form:input path="sdt" value=""  size="30"  type="text"  name="ten" placeholder="hập điện thoại"/>
         <!--  <input type="text" name="sodt" id="sodt" size="30" placeholder="Nhập điện thoại"/> -->
        </p>
        
        <!---------------- DIA CHI BAC SY ----------------->
        <p>
          <label for="diachi">Địa chỉ: </label>
           <form:input path="diachi" value=""  size="30"  type="text"  name="ten" placeholder="Nhập địa chỉ"/>
        <!--   <input type="text" name="diachi" id="diachi" size="50" placeholder="Nhập địa chỉ"/> -->
        </p>
        
        <div style="padding-left:60px; padding-top:20px; margin-left:110px;">

        	<input type="submit" onclick="dkyBacsyFunction(${benhnhan.benhnhan_id})" name="tao" value="Tạo Bác Sỹ"/>
        	<label id="mess" for="mess">${mess}</label>
        </div>
    </div><!--end dang ky bacsy ------>
     </form:form>
</div><!---- end container -->
</body>
</html>

