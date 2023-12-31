<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>footer</title>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/footer.css">
</head>

<body>
<div class="footer-container">
    <img src="<%= request.getContextPath() %>/img/hana_logo.png" alt="Hana Logo" class="footer-logo"/>

    <p class="footer-text">
        <span>COPYRIGHT | ⓒ 2023 Jaeyoung Kim. All rights Reserved.</span><br/><br/>
        <span>CONTACT </span>
        <span class="spacer"> </span>
        <span class="divider">|</span>
        <a href="https://github.com/fabius96/hana_one_moim" class="link-button">
            <span><img src="<%= request.getContextPath() %>/img/github.png" alt="Github Icon" class="footer-icon github"/></span>
        </a>
        <a href="mailto:jy0511_@naver.com" class="link-button">
            <span><img src="<%= request.getContextPath() %>/img/mail.png" alt="Mail Icon" class="footer-icon mail"/></span>
        </a>
    </p>
</div>
</body>

</html>
