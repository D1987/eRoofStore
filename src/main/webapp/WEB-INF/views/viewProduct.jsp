<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Описание товара</h1>

            <p class="lead">Здесь представлено детальное описание товара</p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="#" alt="image" style="width: 100%; height: 300px">
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>

                    <p>
                        <strong>Производитель</strong> : ${product.productManufacturer}
                    </p>

                    <p>
                        <strong>Категория</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Состояние</strong> : ${product.productCondition}
                    </p>
                    <p>${product.productPrice} руб.</p>
                </div>
            </div>
        </div>
    <%--</div>--%>
<%--</div>--%>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>
