<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Регистрация</h1>

            <p class="lead">Заполните все необходимые поля для регистрации:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

        <h3>Базовая информация</h3>

        <div class="form-group">
            <label for="name">Имя</label>
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">E-mail</label>
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Телефон</label>
            <form:input path="phone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username">Логин</label>
            <form:input path="Username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Пароль</label>
            <form:password path="password" id="password" class="form-Control"/>
        </div>

        <h3>Billing адрес</h3>

        <div class="form-group">
            <label for="billingStreet">Улица</label>
            <form:input path="billingAdress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Город</label>
            <form:input path="billingAdress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">Область</label>
            <form:input path="billingAdress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Страна</label>
            <form:input path="billingAdress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="billingAdress.zipСode" id="billingZip" class="form-Control"/>
        </div>

        <h3>Адрес доставки</h3>

        <div class="form-group">
            <label for="shippingStreet">Улица</label>
            <form:input path="shippingAdress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Город</label>
            <form:input path="shippingAdress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">Область</label>
            <form:input path="shippingAdress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Страна</label>
            <form:input path="shippingAdress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="shippingAdress.zipСode" id="shippingZip" class="form-Control"/>
        </div>


        <br><br>
        <input type="submit" value="Добавить" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-default">Отмена</a>
        </form:form>

        <%@ include file="/WEB-INF/views/template/footer.jsp" %>
