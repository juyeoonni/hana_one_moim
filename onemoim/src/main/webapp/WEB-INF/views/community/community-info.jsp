<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>커뮤니티-모임</title>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/community-info.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body data-context-path="${pageContext.request.contextPath}">

<div class="except-footer">
    <jsp:include page="../includes/header_after_login.jsp"/>
    <jsp:include page="../includes/header-community.jsp"/>
    <div class="main-container">
        <div class="outer-content-wrapper">
            <p class="page-name">모임</p>
            <table class="gathering-member-table">
                <thead>
                <tr>
                    <th>이름</th>
                    <th>상태</th>
                    <th>가입시간</th>
                    <th>상태변경시간</th>
                    <th></th>
                </tr>
                </thead>
                <tbody class="member-content">
                <c:forEach var="member" items="${gatheringMembers}">
                    <tr class="member-item">
                        <td>${member.memberName}</td>
                        <td>
                        <c:choose>
                            <c:when test="${member.memberStatusCode == 70}">활동</c:when>
                            <c:when test="${member.memberStatusCode == 71}">정지</c:when>
                            <c:when test="${member.memberStatusCode == 72}">승인대기</c:when>
                            <c:otherwise>알 수 없음</c:otherwise>
                        </c:choose>
                        </td>
                        <td>${member.createdAt}</td>
                        <td>${member.modifiedAt}</td>
                        <td>
                            <c:choose>
                                <c:when test="${member.memberId == gatheringLeaderId}">
                                    <img src="/img/crown.png" class="crown-img" alt="모임장">
                                </c:when>
                                <c:otherwise><button>버튼이름</button></c:otherwise>
                            </c:choose>
                        </td> <!-- 버튼 이름 및 기능을 구체화해야 합니다. -->
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>