<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>

<body>
	<div id="navbar">
	<jsp:include page="navBar.jsp" />
	</div>
	<div id="profile-form-box">
		<div id="title">
			<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������ ���� </p>
				<form action="" method="POST">
					<div id="profile-form">
						<div id="profile-img">
							<svg id="img-icon" xmlns="http://www.w3.org/2000/svg" width="50" height="50" class="bi bi-person" viewBox="0 0 16 16" fill="white">
  								<path fill="white" d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
							</svg>
							<div id="img-white-line">
								<span id="img-change"> �����ʻ��� ���� </span>
								<span id="img-save"> ���� </span>
							</div>
						</div>
								<div id="profile-all">
									<table id="profile-table1">
										<tr>
											<th> �̸� </th>
											<td><input type="text" name="eName" readonly></td>
										</tr>
										<tr>
											<th> �̸��� �ּ� </th>
											<td><input type="text" name="email" readonly></td>
										</tr>
										<tr>
											<th> ��ȭ��ȣ </th>
											<td><input type="text" name="ePhone"></td>
										</tr>
										<tr>
											<th> ������� </th>
											<td><input type="text" name="identyNum" readonly></td>
										</tr>
										<tr>
											<th> ��й�ȣ </th>
											<td><input type="text" name="ePw" readonly></td>
										</tr>	
										<tr>
											<th> ��й�ȣ Ȯ�� </th>
											<td><input type="text" name="check-ePw" readonly></td>
										</tr>
									</table>
								<table id="profile-table2">	
									<tr>	
										<th> �Ի��� </th>
										<td><input class="hiredate" type="text" name="hireDt" readonly></td>
									</tr>
									<tr>
										<th> �μ� </th>
										<td><input class="deptname" type="text" name="dName" readonly></td>
									</tr>
									<tr>
										<th> ���� </th>
										<td><input class="job" type="text" name="job" readonly></td>
									</tr>
									<tr>
										<th> �� �ּ� </th>
										<td>
											<div style="position: relative;">
        									<input class="eAddr1" style="width: 130px; margin-left: 20px;" type="text" name="eAddr">
        										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16" style="position: absolute; top: 65%; transform: translateY(-50%); right: 20px;">
            										<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
        										</svg>
    										</div>
											<input class="eAddr2" type="text" name="eAddr">
										</td>
									</tr>
								<tr>
									<th> �޿� ���� </th>
									<td>
										<select id="bank-select">
											<option value="�ϳ�"> �ϳ����� </option>
											<option value="�츮"> �츮���� </option>
											<option value="����"> �������� </option>
											<option value="���"> ������� </option>
											<option value="����"> �������� </option>
										</select>
									<div>
										<input id="salAccount" type="text" name="salAccount">
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="button-container">
					<input id="saveBtn" type="button" name="save" value="����">
					<input id="closeBtn" type="button" name="close" value="�ݱ�">
				</div>
			</form>
		</div>
	</div>
	
	<script type="text/javascript" src="/resources/js/profile-modify.js"></script>
</body>
</html>