package org.rainbow.company.calculateManagement.mapper;

import java.util.List;

import org.rainbow.company.calculateManagement.domain.TradeDetailEditVO;
import org.rainbow.company.calculateManagement.domain.TradeDetailListVO;
import org.rainbow.company.calculateManagement.domain.TradeDetailSearchDTO;
import org.rainbow.company.calculateManagement.domain.tdDownVO;
import org.rainbow.company.calculateManagement.domain.ucBranchDownVO;
import org.rainbow.company.calculateManagement.domain.ucComDownVO;
import org.rainbow.company.calculateManagement.domain.ucTdDown;


public interface TradeDetailMapper {

	/** tdList 조회*/
	public List<TradeDetailListVO> tradeDetailList();
	
	/** tdList 서치*/
	public List<TradeDetailListVO> searchTd(TradeDetailSearchDTO tdDTO);
	
	/** tdList 결제처리 */
	public int paymentProcessing(List<String> recNo);
	
	/** tdList 대손처리 */
	public int bigHandProcessing(List<String> recNo);
	
	/** 다운받을 리스트 서치 */
	public List<tdDownVO> tdDownList(TradeDetailSearchDTO sdto);
	
	/** 거레명세 수정 불러오기*/
	public TradeDetailEditVO editTdList(String recNo);
	
	/** 거래명세 수정 하기 */
	public int editTdupdate(TradeDetailEditVO vo);
	
	/// 미수 관리 시작
	
	/** 미수관리 리스트 기업 */
	public List<TradeDetailListVO> ucCompany();
	
	/** 미수관리 기업 검색*/
	public List<TradeDetailListVO> ucComSearch(TradeDetailSearchDTO tdDTO);
	
	/** 미수기업 다운용 리스트 만들기 */
	public List<ucComDownVO> ucComDown(TradeDetailSearchDTO sdto);
	
	/** 미수관리 지점 리스트 */
	public List<TradeDetailListVO> ucBranchList();
	
	/** 미수관리 지점 검색 */
	public List<TradeDetailListVO> ucBranchSearch(TradeDetailSearchDTO tdDTO);
	
	/** 미수관리 다운 리스트 받기*/
	public List<ucBranchDownVO> ucBranchDown(TradeDetailSearchDTO sdto);
	
	/** 미수관리 거래명세 리스트 */
	public List<TradeDetailListVO> uctdList();
	
	/** 미수관리 지점 검색 */
	public List<TradeDetailListVO> ucTdSearch(TradeDetailSearchDTO tdDTO);
	
	/** 미수관리 다운 리스트 받기*/
	public List<ucTdDown> ucTdDown(TradeDetailSearchDTO sdto);
	
	// 계산서 발행
	public List<TradeDetailListVO> IoBillList();
	
	
}
