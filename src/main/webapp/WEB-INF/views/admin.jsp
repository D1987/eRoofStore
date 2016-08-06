<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Администратор</h1>
            <p class="lead">Кабинет администратора</p>
        </div>
        
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Добро пожаловать: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/> ">Выйти</a>
            </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />"> Запас Товаров</a>
        </h3>

        <p>Здесь Вы можете просмотреть, проверить  и изменить запасы товаров</p>

        <h3>
            <a href="<c:url value="/admin/customer" />"> Кабинет клиента</a>
        </h3>

        <p>Здесь Вы можете просмотреть информацию о клиенте</p>



        <%@include file="/WEB-INF/views/template/footer.jsp" %>
