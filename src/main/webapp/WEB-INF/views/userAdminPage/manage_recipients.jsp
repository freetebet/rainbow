<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="/resources/images/favicon_rainbow.jpg" type="image/x-icon">
<title>Rainbow BirthDay</title>
</head>
<body>

	<!-- SIDEBAR 페이지 공통내용 -->

	<jsp:include page="sidebar.jsp"></jsp:include>


	<!-- 페이지별 개별 내용 소스코드-->

	<div class="container">
		<section class="m-5">

			<article>
				<div>
					<div aria-label="pagination">
						<ul class="pagination d-flex justify-content-end fw-semibold">
							<li class="page-item"><a class="page-link" href="#" id="lastMonth">지난달</a></li>
							<li class="page-item"><a class="page-link" href="#" id="thisMonth">2024년 03월</a></li>
							<li class="page-item"><a class="page-link" href="#" id="nextMonth">다음달</a></li>
						</ul>
					</div>
				</div>
			</article>

			<article class="mt-5">
				<div class="row row-cols-1 row-cols-md-5 g-4">
					<div class="col">
						<div class="card"
							style="background-color: #FF5798; color: #150070;">
							<div class="card-body">
								<h5 class="card-title fw-semibold">발송 대상자</h5>
								<h4 class="card-text fw-bold text-end" id="numOfRecipients">
									<span>명</span>
								</h4>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card"
							style="background-color: #FF83D9; color: #150070;">
							<div class="card-body">
								<h5 class="card-title fw-semibold">축하카드 미발송</h5>
								<h4 class="card-text fw-bold text-end" id="notSentCount">
									<span>명</span>
								</h4>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card"
							style="background-color: #F2AFFF; color: #150070;">
							<div class="card-body">
								<h5 class="card-title fw-semibold">선물 선택 중</h5>
								<h4 class="card-text fw-bold text-end" id="selectingCount">
									<span>명</span>
								</h4>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card"
							style="background-color: #DCD9FF; color: #150070;">
							<div class="card-body">
								<h5 class="card-title fw-semibold">선물 선택 완료</h5>
								<h4 class="card-text fw-bold text-end" id="selectedCount">
									<span>명</span>
								</h4>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card"
							style="background-color: #A3A2FD; color: #150070;">
							<div class="card-body">
								<h5 class="card-title fw-semibold">선물 발송 완료</h5>
								<h4 class="card-text fw-bold text-end" id="sentCount">
									<span>명</span>
								</h4>
							</div>
						</div>
					</div>
				</div>
			</article>

			<article class="mt-5">
				<div class="overflow-auto" style="height: 450px;">
					<table class="table table-sm table-bordered" id="member_table">
						<thead class="table-danger">
							<tr class="text-center">
								<th>No.</th>
								<th>이름</th>
								<th>직급</th>
								<th>연락처</th>
								<th>이메일</th>
								<th>생년월일</th>
								<th>상태</th>
								<th>선택금액</th>
								<th>수동발송</th>
							</tr>
						</thead>
						<tbody id="recipientList">
							<tr class="text-center align-middle">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><a type="button" class="btn btn-danger">취소</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</article>

		</section>
	</div>
	
	<!-- SIDEBAR 닫힌태그 -->
	</main>
	</div>
	
</body>
<script src="/resources/js/userAdminPage/manage_recipients.js"></script>
</html>