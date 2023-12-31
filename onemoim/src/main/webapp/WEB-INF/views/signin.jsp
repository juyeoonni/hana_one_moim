<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>signin</title>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/signin.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<input type="hidden" id="error-message" value="${errorMessage}" />
<div class="except-footer">
    <jsp:include page="includes/header_before_login.jsp"/>

    <div class="main-container">
        <div class="container">
            <p class="title">
                <span class="green-text">하나 </span>
                <span class="red-text">원</span><span class="green-text">모임</span>
            </p>

            <img src="<%= request.getContextPath() %>/img/character1.png" class="character-image">

            <p class="member-text">
                <span>아직 회원이 아니신가요? </span>
                <a href="${pageContext.request.contextPath}/signup">
                    <span class="link-text">회원가입</span>
                </a>
            </p>

            <form action="/signin" method="post">
                <div class="id-input">
                    <label for="loginId" class="hidden-label">id :</label>
                    <input type="text" placeholder="아이디 입력" id="loginId" name="loginId" class="input-field" required>
                </div>

                <div class="password-input">
                    <label for="memberPassword" class="hidden-label">password :</label>
                    <input type="password" placeholder="비밀번호 입력" id="memberPassword" name="memberPassword"
                           class="input-field" required>
                </div>
                <div class="login-button">
                    <button type="submit" class="button-text">로그인</button>
                </div>
            </form>

            <div class="kakao-login-button">
                <img src="<%= request.getContextPath() %>/img/speech-bubble.png" class="icon-image">
                <p class="button-text">카카오 로그인</p>
            </div>
        </div>
    </div>
</div>

<jsp:include page="includes/footer.jsp"/>
<script src="/js/signin.js"></script>
</body>
</html>
