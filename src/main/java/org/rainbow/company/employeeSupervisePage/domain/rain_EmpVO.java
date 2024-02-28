package org.rainbow.company.employeeSupervisePage.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
<<<<<<< HEAD

=======
//import oracle.sql.CLOB;
>>>>>>> 75d3555a9eb8b678fdbd9c9deca64713651b5f71

@Data
@AllArgsConstructor
@NoArgsConstructor
public class rain_EmpVO {
	
	// 사원번호
	private int eno;
	
	// 부서번호
	private int deptNo;
	
	// 사원 이름
	private String eName; 
	
	// 사원 연락처
	private String ePhone;
	
	// 사원 직급
	private String job;
	
	// 사원 연봉
	private int sal;
	
	// 사원 아이디
	private String eId;
	
	// 사원 비밀번호
	private String ePw;
	
	// 사원 이메일
	private String email;
	
	// 사원 주소
	private String eAddr;
	
	// 주민등록번호
	private String identyNum;
	
	// 급여 계좌
	private String salAccount;
	
	// 근무형태
	private String workType;
	
	// 인사평정
	private String reviewRating;
	
	// 프로필 사진
	private String profilePicture;

	// 재직 증명서
	private String empCertificate;
	
	// 계정 상태
	private String idStatus;
	
	// 급여 수급 은행
	private String eBank;
	
	// 입사일
	private Date hireDt;
	
	// 퇴사일 
	private Date endDt;
}
