<%@ include file="menubacsi.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <!-- InstanceBeginEditable name="noidungchinh" -->
    <div class="container">
   	  <div class=" col-lg-12 tieude">
    		<p> Khám Bệnh </p>
   	  </div>
   	  
	<div class="clean0"></div>  
	<form:form modelAttribute="khamBenh" method="POST"  enctype="utf8">
      <div class="thongtin_kb">
          <%-- <form id="tt_kham_benh" name="kham_benh" method="post" action=""> --%>
          
          	<!------------ FORM MA BENH NHAN ----------------->
            <p>
              <label for="mabenhnhan">Mã Bệnh Nhân:</label>
               <form:input path="benhnhan_id" type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="11" readonly="readonly"/>
             <%--  <input value="${khamBenh.benhnhan_id}" type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="11"  readonly="readonly"/> --%>
            </p>
            
            <!------------ FORM HO TEN BENH NHAN ----------------->
            <p>
              <label for="hoten">Họ Tên Bệnh Nhân:</label>
               <form:input path="hoTen" type="text" name="hoten" id="hoten"  size="40" readonly="readonly"/>
             <%--  <input value="${khamBenh.ho} ${khamBenh.ten}"  type="text" name="hoten" id="hoten"  size="40" readonly="readonly"/> --%>
            </p>
            
            <!------------ FORM TRIEU CHUNG ----------------->
            <p>
              <label for="trieuchung">Triệu Chứng:</label>
             <form:input path="trieuchung" name="trieuchung" id="trieuchung"  readonly="readonly" />
             <%--  <input value="${khamBenh.trieuchung}" name="trieuchung" id="trieuchung"  readonly="readonly" /> --%>
            </p>
          <%-- </form> --%>
      </div><!---end thongtin_kb--->

      <div class="clean0"></div>
      	
      <div class="khambenh">
      	
        	
            <!------------ FORM NGAY KHAM ----------------->
            <p>
              <label for="ngaykham">Ngày khám: </label>
              <form:input path="ngayKham" name="ngaykham" id="ngaykham" size="30" maxlength="20" />
            </p>
        	
            <!------------ FORM MO TA ----------------->
            <p>
              <label for="mota">Mô tả bệnh: </label>
               <form:input path="moTaBenh" name="ngaykham" id="ngaykham" size="75" maxlength="200" />
             
            </p>
            
       	  <!------------ FORM CHAN DOAN ----------------->
            <p>
              <label for="chandoan">Chẩn đoán: </label>
               <form:input path="chuanDoan" name="ngaykham" id="ngaykham" size="75" maxlength="200" />
            </p>
            
            <!------------ FORM NOI/NGOAI TRU ----------------->
            <p>
                <label for="loaidieutri">Loại Điều Trị: </label>
                <form:checkbox path="loaiDieuTri" />
            </p>
            
            <!------------ FORM NGAY XUAT VIEN ----------------->
          	<p>
              <label for="ngaynhapvien">Ngày Xuất viện: </label>
               <form:input path="ngayXuatVien" name="ngaykham" id="ngaykham" size="30" maxlength="20" />
             
            </p>
            
            <!------------ FORM DAN DO ----------------->
  	  	  <p>
            <label for="dando">Dặn dò: </label>
              <form:input path="danDo" name="ngaykham" id="ngaykham" size="75" maxlength="100" />
          </p>
<!------------------------------------------------------------------------------------------------------------->
       	  <p style="font-size:20px; font-weight:bold; color:#009">TOA THUỐC</p>
            
            <!------------ FORM TEN THUOC ----------------->
  	  	  	<p>
            <label for="tenthuoc">Tên Thuốc: </label>
            <input type="text" name="tenthuoc" id="tenthuoc" size="50" maxlength="100"/>
            </p>
            
            <!------------ FORM DON VI TINH	 ----------------->
            <p>
                <label for="donvitinh">Đơn Vị Tính: </label>
                <select  name="donvitinh" id="donvitinh" >
                  <option value="Vien">Viên</option>
                  <option value="Goi">Gói</option>
                  <option value="Tuyp">Tuýp</option>
                </select>
            </p>
            
            <!------------ FORM CACH DUNG ----------------->
          <p>
               <label for="soluong">Số Lượng: </label>
               <input id="soluong" type="text"  size="50" maxlength="100"/>
         </p>
         
         <button  onclick="AddFunction()" type="button" name="" value="" class="but_luuthuoc" data-text="Lưu"><span>Thêm</span></button>
  	  	  	<div class="clean0"></div>
  	  	  	
  	  	  	<p style="font-size:16px;">
	           DANH SÁCH THUỐC
  	  	  	</p>
  	  	  	
  	  	  	<div style="height:150px; width: 70%;overflow:auto; float:left;">
				<table width="100%" border="1">
		        	<tr>
		            	<th width="16%">STT</th>
		                <th width="29%">Tên Thuốc</th>
		                <th width="20%">Đơn Vị Tính</th>
		                <th width="25%">Cách dùng</th>
		                <th width="31%">Dặn dò</th>
		            </tr>
		            <%-- <c:forEach items="${benhNhans}" var="benhnhan" varStatus="status">  
		            <tr>
		            	<td>${status.index + 1}</td> 
		                 <td>${benhnhan.benhnhan_id}</td> 
		                <td>${benhnhan.ho}</td>
		                <td>${benhnhan.ten}</td> 
		                <td><a href="<c:url value="/khambenh/${benhnhan.benhnhan_id}" />" >kham</a></td>
		            </tr>
		            </c:forEach> --%>
		        </table>
		         <button type="submit" name="" value="" class="but_luuthuoc" data-text="Lưu"><span>Lưu</span></button>
      	 </form:form>
       
      </div><!----- end khambenh --->
    </div><!---end container-->
   <script>
  
	    function AddFunction() {		
	    var tenthuoc = $('#tenthuoc').val();
	    var soluong = $('#soluong').val();
	    var donvitinh =  $('select[name=donvitinh]').val();
		console.log("AddFunction tenthuoc " + tenthuoc + "donvitinh " + donvitinh + "so luong" + soluong );
		
		$.ajax({			
			url : 'themthuoc?tenthuoc=' + tenthuoc + " &soluong=" + soluong + "&donvi=" +donvitinh,			
			success : function(data) {
				var str = data;
				console.log("data" +data);
				$('#videodiv').show();
		 	 	$('#playerdiv').html(data);
			}
		});
	    }
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
<!-- InstanceEnd --></html>
