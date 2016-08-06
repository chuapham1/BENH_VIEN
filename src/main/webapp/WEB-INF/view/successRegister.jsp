<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setBundle basename="messages" />
<%@ page session="true"%>
<%@ include file="header.jsp" %>
<html>

<head>
<link href="<c:url value="/resources/bootstrap.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title><spring:message code="label.pages.home.title"></spring:message></title>
</head>
<body>
<!-- Static navbar -->
	
	<div class="container">
		<div class="span12">
			<div id="success">
				<p> Bạn đã Đăng ký tài khoản thành công! </p>
			</div>
			<a href="<c:url value="/login.html" />"><spring:message
					code="label.login"></spring:message></a>
		</div>
	</div>
</body>
</html>