<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table th{
	background-color: #eaeaea;
}
table {
	border: 1px solid black;
}

button 
{
	width: 58px;
	height: 35px;
}
input[type=text]
{
	width: 150px;
}

</style>
</head>
<body>
<jsp:include page="../../navBar.jsp"/>

<div class="container-fluid" align="center" >
	<div class="product-top-back">
		
		
		<div class="container">
		<div align="left" style="padding-top: 50px;"><h2>거래명세-편집</h2></div>`
		<p></p>
			<h3 align="left">기업정보</h3>
	        <table style="width: 1300px">
	            <tr>
	        		<th>기업명</th><td>${edit.comName }</td>
	        		<th>지점명</th><td>${edit.spName }</td>
	        		<th>기업구분</th><td>${edit.comBizType }</td>	
	        	</tr>
	        	<tr>
	        		<th>담당자</th><td>${edit.getCEmpName()}</td>
	        		<th>대표연락처</th><td>${edit.getCEmpTel()}</td>
	        		<th>대표메일</th><td>${edit.getCEmpEmail() }</td>	 
	        	</tr>
	        	<tr>
	        		<th>일자</th><td>${edit.recDate }</td>
	        		<th>결제수단</th><td>${edit.recPayMth }</td>
	        		<th>정산여부</th><td>${edit.recSortation }</td>	
	        	</tr>
	        </table> 
        </div>
		<div class="container" style="padding-top: 50px;">
			<h3 align="left">금액차감</h3>
	        <table style="width: 1300px">
	        	<tr>
	        		<th>적요(품목명)</th>	
	        		<th>차감금액</th>	
	        		<th>차감 공급액</th>	
	        		<th>차감 세액</th>	
	        		<th>원가</th>	
	        		<th>원가-공급액</th>	
	        		<th>원가-세액</th>	
	        		<th>금액조정</th>	
	        	</tr>
	        	<tr>
	        		<td><input type="text"></td>
	        		<td><input type="text" id="recDed"></td>
	        		<td><input type="text" id="recDedSup"></td>
	        		<td><input type="text" id="recDedTax"></td>
	        		<td><input type="text" id="여기부터 작업시작-------!!!!!!!"></td>
	        		<td><input type="text"></td>
	        		<td><input type="text"></td>
	        		<td><button type="button" class="btn btn-primary">버튼</button></td>
	        	</tr>
	        </table> 
        </div>
		<div class="container" style="padding-top: 50px;">
			<h3 align="left">추가정산</h3>
	        <table style="width: 1300px">
	        	<tr>
	        		<th>적요(품목명)</th>
	        		<th>추가정산 금액</th>
	        		<th>추가정산 공급액</th>
	        		<th>추가정산 세액</th>
	        		<th>원가</th>
	        		<th>원가-공급액</th>
	        		<th>원가-세액</th>
	        		<th>금액조정</th>
	        	</tr>	
	        	<tr>
	        		<td><input type="text"></td>
	        		<td><input type="text" id="recAdd"></td>
	        		<td><input type="text"></td>
	        		<td><input type="text"></td>
	        		<td><input type="text"></td>
	        		<td><input type="text"></td>
	        		<td><input type="text"></td>
	        		<td><button type="button" class="btn btn-primary">버튼</button></td>
	        	</tr>	
	        </table> 
        </div>
		<div class="container" style="padding-top: 50px;">
			<h3 align="left">상세내역</h3>
	        <table style="width: 1300px">
	        	<tr>
	        		<th>대분류</th>
	        		<th>소분류</th>
	        		<th>상품코드</th>
	        		<th>상품명</th>
	        		<th>판매가</th>
	        		<th>원가</th>
	        		<th>마진율</th>
	        		<th>주문자</th>
	        	</tr>	
	        	<tr>
	        		<td>${edit.prdMajorCtg }</td>
	        		<td>${edit.prdSubCtg }</td>
	        		<td>${edit.prdNo }</td>
	        		<td>${edit.prdName }</td>
	        		<td>${edit.prdSal }</td>
	        		<td>${edit.prdCstPri }</td>
	        		<td>${edit.prdMargin }</td>
	        		<td>${edit.getCEmpName()}</td>
	        	</tr>	
	        </table> 
        </div>
        <div class="container" >
       		<div class="buttonGp" align="right" style="width: 1300px; padding-top: 15px;">
	        	<div>
	        		<button type="button" class="btn btn-primary">수정</button>
	  				&nbsp;&nbsp;&nbsp;
	        		<button type="button" class="btn btn-primary">목록</button>
	        	</div>
	        </div>	
        </div>
    </div>
</div> 

</body>
</html>