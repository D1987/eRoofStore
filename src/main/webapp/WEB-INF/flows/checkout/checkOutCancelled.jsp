<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Заказ отменен</h1>
                    <p>Ваш заказ отменен. Вы можете продолжить покупки</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/product/productList/all"/>" class="btn btn-default">Товары</a>
            </p>
        </section>
    </div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>