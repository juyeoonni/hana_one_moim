<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>account_info_hana</title>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/gathering-create.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>

<div class="except-footer">
    <jsp:include page="../includes/header_after_login.jsp"/>

    <div class="main-container">
        <div class="content-wrapper">
            <p class="page-name">모임개설</p>
            <p class="progress-text">STEP</p>
            <img src="${pageContext.request.contextPath}/img/progress-bar5-01.png" alt="진행도" class="progress-bar">
            <form action="/gathering/gathering-create" method="post" enctype="multipart/form-data">

                <div class="box-container">

                    <p class="header-text">
                        하나원모임<br>신규 모임 개설
                    </p>
                    <p class="sub-text">
                        신규 모임 개설을 위한 정보를 입력해주세요.
                    </p>

                    <div class="input-container">
                        <input class="gatheringName" type="text" name="gatheringName"
                               placeholder="모임 이름 입력 (20자리 이내로 입력해주세요)" required>
                    </div>
                    <div class="input-container-2">
                        <textarea class="gatheringDescription" name="gatheringDescription" rows="4"
                                  placeholder="모임설명 (모임에 대한 간단한 소개문구를 입력해주세요)" required></textarea>
                    </div>
                    <div class="input-container-3">
                        <label for="gatheringImage" class="file-upload-label">
                            <span id="file-name">모임 대표 이미지 업로드</span>
                            <img src="${pageContext.request.contextPath}/img/camera.png" alt="Upload Image"
                                 class="upload-icon"/>
                        </label>
                        <input id="gatheringImage" class="gatheringImage" type="file" name="gatheringImage"
                               style="display: none;">
                    </div>

                    <p class="open-info">모임 공개 여부</p>
                    <p class="input-description">비공개 선택 시 모임 분류, 추천, 검색으로의 조회가 불가합니다.</p>
                    <div class="input-container-4">
                        <label>
                            <input class="isPublic" type="radio" name="isPublic" value="Y">
                            공개
                        </label>
                        <label>
                            <input class="isPublic" type="radio" name="isPublic" value="N">
                            비공개
                        </label>
                    </div>
                    <p class="sub-title">모임 회비 정보</p>
                    <div class="input-container-5">
                        <input class="paymentAmount" type="number" name="paymentAmount"
                               placeholder="모임 회비 입력" required>
                        <span class="input-currency">원</span>
                    </div>
                    <div class="input-container-6">
                        <input class="paymentDay" type="number" name="paymentDay"
                               placeholder="모임 회비 납부일 입력 (1~30일 사이)" required>
                        <span class="input-currency">일</span>
                    </div>
                    <p class="start-day-info">모임 회비 납부 시작일 선택</p>
                    <div class="input-container-7">
                        <input class="startDate" type="date" name="startDate"
                               placeholder="모임 회비 납부 시작일 선택">
                    </div>
                    <p class="payment-cycle-info">납부 주기 선택</p>
                    <div class="input-container-8">
                        <label>
                            <input class="paymentCycleCode" type="radio" name="paymentCycleCode" value="60">
                            연
                        </label>
                        <label>
                            <input class="paymentCycleCode" type="radio" name="paymentCycleCode" value="61">
                            분기
                        </label>
                        <label>
                            <input class="paymentCycleCode" type="radio" name="paymentCycleCode" value="62">
                            월
                        </label>
                    </div>

                    <div class="submit-box">
                        <button type="submit" class="button-text">개설하기</button>
                    </div>
                </div>
            </form>

        </div>
    </div>

</div>
<jsp:include page="../includes/footer.jsp"/>
<script src="/js/gathering-create.js"></script>
</body>
</html>
