<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="now" class="java.util.Date"/>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Заказ</h1>

            <p class="lead">Подтверждение заказа</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizaontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

                        <div class="text-center">
                            <h1>Квитанция</h1>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Адрес получателя</strong><br>
                                        ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                    <br>
                                </address>
                            </div>

                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Дата доставки: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Адрес Billing</strong><br>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                    <br>
                                    <br>
                                </address>
                            </div>
                        </div>

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Товар</th>
                                    <th>#</th>
                                    <th class="text-center">Цена</th>
                                    <th class="text-center">Общая цена</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td class="text-right">
                                            <h4><strong>Общая Цена: </strong></h4>
                                        </td>
                                        <td class="text-center text-danger">
                                            <h4><strong>${order.cart.grandTotal} руб.</strong></h4>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <input type="hidden" name="_flowExecutionKey"/>
                        <br><br>
                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Назад</button>
                        <input type="submit" value="Submit Order" class="btn btn-default"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-default" name="_eventId_cancel">Отмена</button>
                    </div>
                </form:form>

            </div>
        </div>

        <%@ include file="/WEB-INF/views/template/footer.jsp" %>