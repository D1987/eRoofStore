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

        <h3>Адрес доставки</h3>

        <div class="form-group">
            <label for="shippingStreet">Улица</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Номер квартиры</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Город</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">Область</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Страна</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey"/>


        <br><br>
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Назад</button>
        <input type="submit" value="Следующая" class="btn btn-default" name="_eventId_shippingDetailCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Отмена</button>
        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>