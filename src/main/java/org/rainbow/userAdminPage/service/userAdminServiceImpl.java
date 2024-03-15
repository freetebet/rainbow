package org.rainbow.userAdminPage.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.rainbow.userAdminPage.mapper.userAdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class userAdminServiceImpl implements userAdminService {

	@Autowired
	private userAdminMapper userMapper;

	@Override
	public HashMap<String, Object> customerLogin(HashMap<String, String> inputMap) {
		log.info("service login info..." + inputMap);
		return userMapper.customerLogin(inputMap);
	}

	@Override
	public HashMap<String, Object> getDashboard(int spotNo) {
		return userMapper.getDashboard(spotNo);
	}

	@Override
	public HashMap<String, Object> getUserInfo(int spotNo) {
		return userMapper.getUserInfo(spotNo);
	}

	@Override
	public int updateUserInfo(HashMap<String, Object> updateInfo) {
		return userMapper.updateUserInfo(updateInfo);
	}

	@Override
	public List<HashMap<String, Object>> getEmpList(int sNo) {
		return userMapper.getEmpList(sNo);
	}

	@Override
	public List<HashMap<String, Object>> getInquiryList(int spotNo) {
		return userMapper.getInquiryList(spotNo);
	}

	@Override
	public boolean addQnA(HashMap<String, Object> addQnAMap) {
		return userMapper.addQnA(addQnAMap);
	}

	@Override
	public boolean updateEmp(HashMap<String, Object> emp) {
		return userMapper.updateEmp(emp);
	}

	@Override
	public boolean addUserEmp(HashMap<String, Object> addForm) {
		return userMapper.addUserEmp(addForm);
	}

	@Override
	public List<HashMap<String, Object>> getGiftList() {
		return userMapper.getGiftList();
	}

	@Override
	public boolean deleteEmployees(List<HashMap<String, Integer>> deleteParams) {
		try {
			// deleteParams에 있는 각 직원 정보에 대해 삭제 작업을 수행합니다.
			for (HashMap<String, Integer> deleteParam : deleteParams) {
				System.out.println("서비스레이어 : " + deleteParam);
				userMapper.deleteEmployees(deleteParam);
			}
			return true; // 모든 삭제 작업이 성공했을 경우 true 반환
		} catch (Exception e) {
			e.printStackTrace();
			return false; // 삭제 실패시 false 반환
		}
	}

	@Override
	public boolean updateCustomGift(HashMap<String, Object> customGift) {
		try {
			userMapper.updateCustomGift(customGift);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<HashMap<String, Object>> getCustomGift(int spotNo) {
		String customGift = userMapper.getCustomGift(spotNo);
		System.out.println("결과:" + customGift);

		ObjectMapper objectMapper = new ObjectMapper();
		List<String> proNoList = new ArrayList<>();

		try {
			// 문자열을 JSON 배열로 변환하여 리스트로 파싱
			proNoList = objectMapper.readValue(customGift, new TypeReference<List<String>>() {
			});
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<HashMap<String, Object>> customList = new ArrayList<HashMap<String, Object>>();

		for (String prdNo : proNoList) {
			// 각 상품 번호를 이용하여 상품 정보를 가져옴
			HashMap<String, Object> productInfo = userMapper.getProduct(prdNo);
			// 가져온 상품 정보를 customList에 추가
			customList.add(productInfo);
		}
		return customList;
	}

}
