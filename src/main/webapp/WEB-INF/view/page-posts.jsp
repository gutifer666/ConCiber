<%@ page import="org.malaga42.conciber.database.entity.EntryEntity" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<jsp:include page="./components/header.jsp">
    <jsp:param name="titlename" value="Listado de Posts"/>
</jsp:include>
<body>
    <jsp:include page="./components/navbar.jsp"></jsp:include>
    <section class="container py-2">
        <%
            List<EntryEntity> entryEntityList = (List<EntryEntity>) request.getAttribute("posts");
            for (EntryEntity entry: entryEntityList) {
        %>
        <div class="card">
            <div class="card-body">
                <h2><%=entry.getTitle()%></h2>
                <p><%=entry.getCreateTime()%></p>
                <a href="/posts/<%=entry.getId()%>">Ver más . . .</a>
            </div>
        </div>
        <% }%>
    </section>
</body>
</html>