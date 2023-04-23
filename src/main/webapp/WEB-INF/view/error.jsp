<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="es">
<jsp:include page="components/header.jsp">
    <jsp:param name="titlename" value="Error 404"/>
</jsp:include>
<body>
<jsp:include page="components/navbar.jsp"></jsp:include>
<div class="container">
    <h1>Error 404 - Lo siento, profe, no lo hicimos</h1>
    <jsp:include page="components/footer.jsp"></jsp:include>
</div>
<jsp:include page="components/scripts.jsp"></jsp:include>
</body>
</html>