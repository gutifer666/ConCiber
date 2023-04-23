<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<jsp:include page="./components/header.jsp">
    <jsp:param name="titlename" value="${post.title}"/>
</jsp:include>
<body>
    <jsp:include page="./components/navbar.jsp"></jsp:include>
    <article class="container py-2">
        <h1>${post.title}</h1>
        <p>Publicado el: ${post.createTime}</p>
        <div>
            ${post.content}
        </div>
    </article>
</body>
</html>