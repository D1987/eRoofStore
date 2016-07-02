<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Администратор</h1>
            <p class="lead">Кабинет администратора</p>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory" />"> Запас Товаров</a>
        </h3>

        <p>Здесь Вы можете просмотреть, проверить  и изменить запасы товаров</p>



        <%@include file="/WEB-INF/views/template/footer.jsp" %>
