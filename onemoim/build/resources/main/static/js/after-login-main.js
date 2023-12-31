// 모든 .container 요소 선택
let containers = document.querySelectorAll('.container');
// 현재 활성화된 슬라이드 인덱스 초기화
let currentContainer = 0;

// 슬라이드 전환 함수
function changeContainer() {
    // 모든 컨테이너의 opacity 0으로 설정
    for (let container of containers) {
        container.style.opacity = 0;
    }

    // 현재 컨테이너 인덱스 1 증가
    currentContainer++;

    // 모든 슬라이드 다 보여주면 처음 슬라이드로 돌아가기
    if (currentContainer === containers.length) {
        currentContainer = 0;
    }

    // 현재 활성화된 슬라이드 opacity 1로 설정
    containers[currentContainer].style.opacity = 1;
}

// 3초마다 changeContainer 함수 실행
setInterval(changeContainer, 4000);

// 모임 생성 페이지로 이동
function createGathering() {
    location.href = '/gathering/gathering-create';
}

// 주제별 모임 조회
function showGatheringCategory(interest) {
    location.href = '/gathering/gathering-category?interest=' + interest;
}

// 주제별 모임 조회
function showGatheringRecommend() {
    location.href = '/gathering/gathering-recommend';
}

let currentSlide = 0;
const slider = document.querySelector('.recommend-slider');
const items = document.querySelectorAll('.recommend-item');
const totalSlides = 3;

document.getElementById('nextBtn').addEventListener('click', function () {
    if (currentSlide < totalSlides - 1) { // 마지막 슬라이드가 아니면
        currentSlide++;
    } else { // 마지막 슬라이드면
        currentSlide = 0; // 첫 번째 슬라이드로 돌아가기
    }
    updateSliderPosition();
});

document.getElementById('prevBtn').addEventListener('click', function () {
    if (currentSlide > 0) { // 첫 번째 슬라이드가 아니면
        currentSlide--;
        updateSliderPosition();
    }
});

function updateSliderPosition() {
    const offset = -currentSlide * 55; // 현재 슬라이드 위치를 퍼센트로 계산
    slider.style.transform = `translateX(${offset}%)`;
}

// 모임 가입 신청 버튼
function applicationGathering(gatheringId) {
    const contextPath = document.body.getAttribute('data-context-path');
    const url = contextPath + "/gathering/gathering-application";
    $.ajax({
        url: url,
        type: 'POST',
        data: { gatheringId: gatheringId },
        success: function() {
            alert("가입신청이 성공적으로 처리되었습니다.");
            closeCurrentModal();
            location.reload();
        },
        error: function() {
            console.log(url)
            alert("가입신청에 실패했습니다.");
        }
    });
}
