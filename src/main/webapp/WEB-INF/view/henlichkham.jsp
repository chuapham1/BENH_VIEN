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
			<p> Hẹn Lịch Khám </p>
		</div>
	
		<form action="">
			<div class="clean0"></div> 
			<div class ="henlich">
				<!------------ MA BENH NHAN ----------------->
	        	<p>
		            <label for="mabenhnhan">Mã Bệnh Nhân:</label>
		            <input  path=""  type ="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="20" />
		           <!--  <input type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="20" /> -->
	        	</p>
	        	
	        	<!------------ NGAY KHAM ----------------->
	        	<p>
		            <label for="ngaykham">Ngày Khám:</label>
		            <input path=""  type ="text" name="ngaykham" id="ngaykham" size="30" maxlength="20" />
		           <!--  <input type="text" name="mabenhnhan" id="mabenhnhan" size="30" maxlength="20" /> -->
	        	</p>
	        	
	        	<!------------ GIO KHAM ----------------->
	        	<p>
          			<label for="giokham">Giờ Khám:</label>
           			<input path=""  type ="text" name="giokham" id="giokham" size="30" maxlength="20" />
        		</p>
        		
        		<!------------ Trieu chung ----------------->
		        <p>
		          <label for="trieuchung">Triệu Chứng: </label>
		          <input path=""  type ="text" name="trieuchung" id="trieuchung" size="30" maxlength="20" />
		        </p>
	        </div> <!-- end henlich -->
	        
	        <div style="clear:both"></div>
    
	        <!------------ Button Chuc Nang ----------------->
	        <div class="but_chucnang">
	            <!--Button luu-->
	             <input type="button" onclick="DatLichFunction()"  value="Hẹn Lịch" class="but_datlich" />
	            	<label id="mess" for="mess"></label>
	            <!-- <button type="button" name="" value="" class="but_datlich" data-text="Đặt Lịch"><span>Đặt Lịch</span>
	            </button> -->
	         
	        </div><!--end button chuc nang-->
	        
	        <div class="clean0"></div> 
	        
	        <div style="min-height:150px; width:70%;overflow:auto; float:left; margin-top: 50px">
			<%-- <table width="100%" border="1">
        	<tr>
            	<th width="16%">STT</th>
                <th width="29%">Mã Bệnh Nhân</th>
                <th width="24%">Họ</th>
                <th width="31%">Tên</th>
                <th width="29%">Hẹn Lịch</th>
            </tr>s
            <c:forEach items="${benhNhans}" var="benhnhan" varStatus="status">  
            <tr>
            	<td>${status.index + 1}</td> 
                 <td>${benhnhan.benhnhan_id}</td> 
                <td>${benhnhan.ho}</td>
                <td>${benhnhan.ten}</td> 
                <td>  <button  onclick="HenFunction(${benhnhan.benhnhan_id})" type="button" ><span>Hẹn</span></button></td>
            </tr>
            </c:forEach>
            
        </table> --%>
			</div><!---end div table---> 
		</form>

    </div><!----- end container --->
 <script>
  
	    function HenFunction(id) {		
		 $("#mabenhnhan").val(id);
	    }
	    
	    function DatLichFunction() {		
			// $("#mabenhnhan").val(id);
			 var id = $('#mabenhnhan').val();
			 var ngaykham = $('#ngaykham').val(); 
			 var giokham = $('#giokham').val();
			 var trieuchung = $('#trieuchung').val();
			 console.log("HenFunction id "+ id  + "ngaykham" + ngaykham + "giokham" + giokham);
		 	$.ajax({
		 		type : "GET",
				url : 'henlich?mabenhnhan=' + id + " &ngaykham=" + ngaykham + "&giokham=" +giokham +"&trieuchung=" + trieuchung,			
				success : function(data) {
					var str = data;
					console.log("data" +data);
					$("#mess").html(data);
				}
			}); 
		    }
	    
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
</body>
<!-- InstanceEnd --></html>