package org.rainbow.company.custMgmt.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Getter
@Setter
public class spotSearchDTO {
	
	// 검색어
		private String keyword;
		
		private String spStatus;
		
		private String[] checkedValues;

}
