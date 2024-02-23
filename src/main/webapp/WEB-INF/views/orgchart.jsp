<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	body{
		margin : 0;
		padding : 0;
		position: relative;
	}
	div{
		display: block;
	}
	#navBar{
		position: fixed;
		width : 100%;
		top : 0;
	}
	#orgchart-form {
        width: 100%;
        text-align: center;
    }
    li {
        list-style: none;
    }
    #orgTeam {
       	display: flex;
        justify-content: center; 
    }
    .team {
       padding : 50px; 
    }
    #orgHeader{
    	margin-left: 30px;
    }
    #title{
    	display : inline-block;
    	margin-top : 100px;
    	margin-left: 300px;
    }
</style>
</head>
	
<body>
	<div id="navBar">
		<jsp:include page="navBar.jsp"/>
	</div>
		<div id="title">
			<h1> ������ </h1>
		</div>
		<div id="orgchart">
			<div id="orgchart-form">
				<div id="orgHeader">
					<ul class="orgHeader">
						<li id="header">
							<strong> ��ǥ </strong>
							<p>�������</p>
						</li>
					</ul>
				</div>
				<div id="orgTeam">
					<ul class="team">
						<li id="reader-Name">
							<p> �濵 �������� </p>
							<strong>������</strong>
						</li>
						<br>
						<li>
							<p> �繫�� </p>
							<strong> ��ī�� </strong>
						</li>
						<br>
						<li>
							<p> �λ��� </p>
							<strong> ���� </strong>
						</li>
					</ul>
					<ul class="team">
						<li id="reader-Name">
							<p> ����� </p>
							<strong> �źϿ� </strong>
						</li>
						<br>
						<li>
							<p> ������ </p>
							<strong> ��Ϻα� </strong>
						</li>
						<br>
						<li>
							<p> ��ǰ�� </p>
							<strong> ���α� </strong>
						</li>
						<br>
						<li>
							<p> �������� </p>
							<strong> �̻��ؾ� </strong>
						</li>
					</ul>
					<ul class="team">
						<li id="reader-Name">
							<p> ���ߺ��� </p>
							<strong> ���ڸ� </strong>
						</li>
						<br>
						<li>
							<p>������</p>
							<strong>���ڵ�</strong>
						</li>
						<br>
						<li>
							<p>��������</p>
							<strong>���̸�</strong>
						</li>
					</ul>
				</div>
			</div>
		</div>
</body>
</html>