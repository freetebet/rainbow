/** 서치바 : 키워드 시작*/	

//키워드와 현재 페이지를 저장하는 전역 변수
let currentKeyword = '';

//검색 버튼 클릭 이벤트 핸들러
document.querySelector('#searchBarSearchBtn').addEventListener('click', function() {
 currentKeyword = document.querySelector('#keyword').value; // 현재 키워드 갱신
 fetchSearchResults(currentKeyword); // 검색 결과 요청
 
});

function fetchSearchResults(keyword) {
    fetch('/searchCompany?keyword=' + keyword)
        .then(response => response.json())
        .then(list => {
            let msg = '';
            list.forEach(list => {
            	  msg += '<tr class="td" data-type="'+list.comBizType+'">'+
                  '<td><a href="'+list.companyNo+'">'+list.companyNo+'</a></td>'+
                  '<td>'+list.comName+'</td>'+
                  '<td>'+list.comBizNum+'</td>'+
                  '<td>'+list.comBizType+'</td>'+
                  '<td>'+list.comArea+'</td>'+
                  '<td>'+list.comAddr+'</td>'+
                  '<td>'+list.comContact+'</td>'+
                  '<td>'+list.comBizStatus+'</td>'+     
              '</tr>';
            });
            resetCheckboxes();
            const tableBody = document.querySelector('#company_tbl tbody');
            tableBody.innerHTML = msg;
            
            drawPagination();
            goToPage(1);
            resetCheckboxes();

        })
        .catch(error => console.error('Error:', error));
}

//체크박스 상태 초기화 함수 이기능을 안걸어두면 체크 박스 꺼져있는데 검색하면 체크박스 무시하고나옴 
// 이거 예외처리하면 코드 너무 길어짐;;
function resetCheckboxes() {
    // 모든 체크박스를 비활성화
    document.querySelectorAll('.filter-checkbox').forEach(function(checkbox) {
        checkbox.checked = true;
    });

    // "전체 선택" 체크박스도 초기화
    document.getElementById('td-BusinessAll').checked = true;
}


//필터링된 상품 리스트 가져오기
function getFilteredProducts() {
    let typeFilters = Array.from(document.querySelectorAll('.filter-checkbox[data-filter="td-Business"]:checked')).map(function (checkbox) {
        return checkbox.value;
    });

    // 여기서 새로운 상품 리스트를 가져오도록 수정
    let tds = document.querySelectorAll('.td'); // 전체 상품 리스트
    let filteredProducts = Array.from(tds).filter(function (tds) {
        let type = tds.getAttribute('data-type');
        return (typeFilters.length === 0 || typeFilters.includes(type));
    });

    return filteredProducts;
}
/** 서치바 : 키워드 끝*/