
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->
<title>Đăng Ký</title>
<!-- <link href="css/default.css" rel="stylesheet" type="text/css" /> -->
<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet">
</head>

<body>
	<div class="dangky_tk">
        <table width="400" cellpadding="15" align="center">
            <tr>
                <th colspan="2">ĐĂNG KÝ</th>
            </tr>
            <form:form modelAttribute="user" method="post" id="registerform" class="form-signin" novalidate="novalidate"  enctype="utf8">
            <tr>
                <td width="131">Họ :</td>
                <td width="201">
                <form:input path="ho" value=""  size="30"  type="text"  name="ho" placeholder="Nhập họ"/>
                   <!--  <input type="text" name="ho" size="30" placeholder="Nhập họ"/> -->
                </td>
            </tr>
            
            <tr>
                <td>Tên :</td>
                <td>
                  <form:input path="ten" value=""  size="30"  type="text"  name="ten" placeholder="Nhập tên"/>
                    <!-- <input type="text" name="ten" size="30" placeholder="Nhập tên"/> -->
                </td>
            </tr>
            
            <tr>
                <td>Email :</td>
                <td>
                	<form:input path="email" value=""  size="30"  type="text"  name="email" placeholder="example@gmail.com"/>
                    <!-- <input type="text" name="email" size="30" placeholder="example@gmail.com"/> -->
                </td>
            </tr>
            
            <tr>
                <td>Password :</td>
                <td>
                	<form:input path="password" value=""  size="30"  type="password"  name="pass" placeholder="Nhập mật khẩu"/>
                    <!-- <input type="password" name="pass" size="30" placeholder="Nhập mật khẩu"/> -->
                </td>
            </tr>
            
            <tr>
                <td>Re-password:</td>
                <td>
                	<form:input path="rePassword" value=""  size="30"  type="password"  name="re_pass" placeholder="Nhập lại mật khẩu"/>
                    <!-- <input type="password" name="re_pass" size="30" placeholder="nhập lại mật khẩu"/> -->
                </td>
            </tr>
            
            <tr>
                <td colspan="2" align="center">
                   <!--  <input type="reset" name="reset" value="reset"/> &nbsp; &nbsp; &nbsp;  -->
                    <input type="submit" name="ok" value="OK"/>
                </td>
            </tr>
            </form:form>
        </table>
	</div>
</body>
</html>


