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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class=" col-lg-12 tieude">
        <p> Chi Tiết Bệnh Án</p>
    </div> <!--end tieu de-->
<div class="ngay_ctba">
      	<!------------ NGAY KHAM----------------->
      	<form:form modelAttribute="search" method="POST">
        <p>
            <br>
             <label for="ngaykham">Mã Toa: </label>
             <form:select path="maToa" items="${maToas}">					
			</form:select>	
        <input type="submit" value="Tim" class="btn btn-default">
        </p>
        </form:form>
        <!---------------------FORM MA CHI TIET BENH AN ----------------------------->
        <p class="dong">
            <label for="machitiet">Mã Số:</label>
            <input value="${benhAn.benhan_id}" name="machitiet" type="text" id="machitiet" size="30" maxlength="40" readonly>
		</p>
        
        <!---------------------FORM TEN BAC SY ----------------------------->
        <p class="dong">
            <label for="tenbacsy">Bác sỹ tiếp nhận:</label>
            <input value="${benhAn.tenBacSi}" name="tenbacsy" type="text" id="tenbacsy" size="30" maxlength="40" readonly>
		</p>
        
        <!---------------------FORM CHAN DOAN ----------------------------->
        <p class="dong">
            <label for="chandoan">Chẩn Đoán:</label>
            <input value="${benhAn.chuanDoan}" name="chandoan" type="text" id="chandoan" size="50" maxlength="100" readonly>
		</p>
        
        
        
        <br>
        <label style="float:none; font-size:16px;">TOA THUỐC : </label>
        
        <!---------------------FORM MA TOA THUOC ----------------------------->
        <p class="dong">
            <label for="matoa">Mã Toa:</label>
            <input value="${search.maToa}" name="matoa" type="text" id="matoa" size="30" maxlength="40" readonly>
		</p>
        
        <table width="80%" border="1" cellspacing="2">
              <tr>
              	<th width="4%">STT</th>
                <th width="33%">Tên Thuốc</th>
                <th width="19%">Đơn Vị</th>
                <th width="23%">Số lượng</th>
               
              </tr>
              <c:forEach items="${dsChiTietToa}" var="chiTietToa" varStatus="status">
              <tr>
               <td>${status.index + 1}</td> 
                 <td>${chiTietToa.tenThuoc}</td>
                <td>${chiTietToa.donVi}</td>
                <td>${chiTietToa.soLuong}</td>
              </tr>
               </c:forEach>
              
            </table>
      </div><!------end ngay_ctba---->
 </div>     
</body>
</html>