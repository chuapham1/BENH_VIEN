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
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
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
      		 <a href="<c:url value="/j_spring_security_logout" />">Đăng Xuất</a>
        </div><!---end dangxuat-->
        	
        <div class="col-md-12 nav">
            <ul>
                <li> <a href="<c:url value="/bs_khambenh" />">Trang chủ </a></li>
                <li><a href="<c:url value="/bs_khambenh" />">Khám Bệnh</a></li>
                <%-- <a href="<c:url value="/thongtinbenhnhan" />"> --%>
                <li><a href="<c:url value="/henlichkham" />">Hẹn Lịch Khám</a></li>
            </ul>
                
            <div class="clean0"></div>
        </div><!-- end nav--->
    </div><!--end container--->            
    </header>