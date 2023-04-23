<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="es">
<jsp:include page="components/header.jsp">
    <jsp:param name="titlename" value="Index"/>
</jsp:include>
<body>
<jsp:include page="components/navbar.jsp"></jsp:include>
<div class="px-4 py-5 my-5 text-center">
    <h1 class="display-5 fw-bold">ConCiber</h1>
    <div class="col-lg-6 mx-auto">
        <p class="lead mb-4">Concienciando por la ciberseguridad.</p>
    </div>
</div>
<jsp:include page="components/footer.jsp"></jsp:include>
<jsp:include page="components/scripts.jsp"></jsp:include>
</body>
</html>