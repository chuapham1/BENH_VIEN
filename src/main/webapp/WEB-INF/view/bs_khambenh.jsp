<%@ include file="menubacsi.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- InstanceBeginEditable name="noidungchinh" -->
    <div class="container">
   	  <div class=" col-lg-12 tieude">
    		<p> Khám Bệnh </p>
   	  </div>
    
    <div style="height:150px; width: 70%;overflow:auto; float:left;">
		<table width="100%" border="1">
        	<tr>
            	<th width="16%">STT</th>
                <th width="29%">Mã Bệnh Nhân</th>
                <th width="24%">Họ</th>
                <th width="31%">Tên</th>
                <th width="29%">Kham</th>
            </tr>
            <c:forEach items="${benhNhans}" var="benhnhan" varStatus="status">  
            <tr>
            	<td>${status.index + 1}</td> 
                 <td>${benhnhan.benhnhan_id}</td> 
                <td>${benhnhan.ho}</td>
                <td>${benhnhan.ten}</td> 
                <td><a href="<c:url value="/khambenh/${benhnhan.benhnhan_id}" />" >kham</a></td>
            </tr>
            </c:forEach>
            
        </table>
	</div><!---end div table---> 
    
    
    <div class="clean0"></div>  
     
      </div><!----- end khambenh --->
    <!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
