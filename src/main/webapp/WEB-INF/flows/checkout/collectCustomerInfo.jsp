<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Клиент</h1>

            <p class="lead">Личная информация</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

        <h3>Базовая информация</h3>

        <div class="form-group">
            <label for="name">Имя</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">E-mail</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Телефон</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
        </div>


        <h3>Billing адрес</h3>

        <div class="form-group">
            <label for="billingStreet">Улица</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Номер квартиры</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Город</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">Область</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Страна</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey"/>


        <br><br>
        <input type="submit" value="Следующая" class="btn btn-default" name="_eventId_customerInfoCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Отмена</button>
        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>