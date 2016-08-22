<%@ include file="menu.jsp"%>
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
<html><!-- InstanceBegin template="/Templates/templates.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta charset="utf-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>Xem Hồ Sơ Bệnh Án</title>
<!-- InstanceEndEditable -->
<link href="<c:url value="/resources/css/vicons-font.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/default.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/normalize.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/buttons.css"/>" rel="stylesheet" type="text/css">


</head>

<body>

<div class="clean0"></div>
<br/>

<div class="container">
    <div class=" col-lg-12 tieude">
        <p> Hồ Sơ Bệnh Án</p>
    </div> <!--end tieu de-->
  
    <div class="clean0"></div>
    
    <div class="xemhoso">
      <form name="xemhoso" method="post" action="">
        <p>
          <label for="mabn">Mã Bệnh Nhân:</label>
          <input value="${benhNhan.benhnhan_id}" name="mabn" type="text" id="mabn" size="30" maxlength="20">
        <p>
          <label for="tenbn">Họ Tên Bệnh Nhân: </label>
          <input value="${benhNhan.ho} ${benhNhan.ten}" name="tenbn" type="text" id="tenbn" size="50" maxlength="50" readonly>
        </p>
        <p>
          <label for="ngaysinh_hs">Ngày Sinh: </label>
          <input value="${benhNhan.ngaysinh}" name="ngaysinh_hs" type="text" id="ngaysinh_hs" size="50" maxlength="20" readonly>
        </p>
    
        <p>
          <label for="diachi_hs">Địa Chỉ: </label>
          <input  value="${benhNhan.diachi}" name="diachi_hs" type="text" id="diachi_hs" size="100" maxlength="50" readonly>
        </p>
        
        <p>
        	<label>DANH SÁCH BỆNH ÁN: </label>
        </p>
        <p>&nbsp; </p>

        <div style="height:100px; width:95%;overflow:auto; float:left; margin-bottom:30px">
            <table width="100%" border="1" cellspacing="2">
              <tr>
                <th width="4%">STT</th>
                <th width="10%">Mã Bệnh Án</th>
                <th width="13%">Bác Sỹ Tiếp Nhận</th>
                <th width="14%">Ngày Nhập Viện</th>
                <th width="14%">Ngày Xuất Viện</th>
                <th width="18%">Tình Trạng Nhập Viện</th>
                <th width="15%">Chẩn Đoán Ban Đầu</th>
                <th width="12%">Chi Tiết</th>
              </tr>
               <c:forEach items="${dskhamBenhDto}" var="benhAn" varStatus="status">  
              <tr>
                <td>${status.index + 1}</td> 
                <td>${benhAn.benhan_id}</td>
                <td>${benhAn.tenBacSi}</td>
                <td>${benhAn.ngayKham}</td>
                <td>${benhAn.ngayXuatVien}</td>
                <td>${benhAn.moTaBenh}</td>
                <td>${benhAn.chuanDoan}</td>
                <td><a href="<c:url value="/chitiet/${benhAn.benhan_id}" />" >chi tiết</a></td>
              </tr>
               </c:forEach>
            </table>
        </div>
      </form>
      <br>
      
  </div><!----end xem ho so---->
</div><!----end container --->
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
