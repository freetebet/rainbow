<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="head-line">
		<img id="logo" alt="LOGO" src="resources/images/rainbow_white.png" />
	</div>
	
<div id="loginForm">
		<div id="loginBox">
			<form action="" method="POST">
				<div id="usernameBar">
					<div class="d-inline-block p-3 rounded-circle" style="background-color: #D3D3D3;">
				 		<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="gray" class="bi bi-people-fill" viewBox="0 0 16 16">
  							<path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
						</svg>
					</div>
					
					<!-- ���̵� input -->
					<input type="text" class="username" name="username" placeholder="Username">
				</div>
				<div id="userpwBar">
					<div class="d-inline-block p-3 rounded-circle" style="background-color: #D3D3D3;">
						<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="gray" class="bi bi-key-fill" viewBox="0 0 16 16">
  							<path d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
						</svg>
					</div>
					
					<!-- ��й�ȣ input -->
					<input type="text" name="userpw" placeholder="�ܡܡܡ�">
				</div>
				<div>
				
					<!-- �α��� ��ư -->
					<input type="button" id="loginBtn" class="loginBtn" name="login" value="�α���">
				</div>
			</form>
		</div>
	</div>
	
	<div id="footer-line">
		<p><strong>
		���̴� ������ ã�ƴٳ൵ ����� �ִ� ������ ��Ȳ�Ͽ��� ���̴� ���� ��ģ �𷡻��� ���̴� �̻��� ���� ������ ������ �ΰ��� ���� ���� ������ ���� ���̴� ������ ����ϴ� õ�ڸ�ȫ�� ��� ������ �λ��� ǳ���ϰ� �ϴ� �°� ������
		</strong></p>
	</div>
	

	<script type="text/javascript" src="/resources/js/login.js"></script>
</body>
</html>