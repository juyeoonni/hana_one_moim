<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>거래내역조회</title>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/community-account.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body data-context-path="${pageContext.request.contextPath}" data-account-number="${accountNumber}">

<div class="except-footer">
    <jsp:include page="../includes/header_after_login.jsp"/>
    <jsp:include page="../includes/header-community.jsp"/>
    <div class="main-container">
        <div class="outer-content-wrapper">
            <div class="page-name-wrapper">
                <p class="page-name">${gathering.gatheringName} 계좌조회</p>
                <div class="page-name-right">
                    <button class="withdraw-button" id="withdraw-button">출금하기</button>
                    <c:choose>
                        <c:when test="${isPaid}">
                            <button class="deposit-button" id="deposit-button"
                                    onclick="location.href='${pageContext.request.contextPath}/community/${gatheringId}/transfer-hana'">
                                입금하기
                            </button>
                        </c:when>
                        <c:otherwise>
                            <button class="payment-button" id="payment-button"
                                    onclick="location.href='${pageContext.request.contextPath}/community/${gatheringId}/transfer-hana'">
                                회비납입
                            </button>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <div class="account-box">
                <c:set var="accountNumberStr" value="${accountNumber}"/>
                <c:choose>
                    <c:when test="${not empty accountNumberStr}">
                        <c:out value="${accountNumberStr.substring(0, 3)}"/> -
                        <c:out value="${accountNumberStr.substring(3, 9)}"/> -
                        <c:out value="${accountNumberStr.substring(9)}"/>
                    </c:when>
                    <c:otherwise>
                        <c:out value=""/>
                    </c:otherwise>
                </c:choose>
                ${formattedAccountNumber}
            </div>

            <table class="transaction-table">
                <thead>
                <tr>
                    <th class="left-title">거래일시</th>
                    <th>유형</th>
                    <th>영역</th>
                    <th>적요</th>
                    <th>출금액</th>
                    <th>입금액</th>
                    <th class="right-title">잔액</th>
                </tr>
                </thead>
                <tbody class="transaction-content">
                </tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="../includes/footer.jsp"/>
<script src="/js/community-account.js"></script>
</body>
</html>
