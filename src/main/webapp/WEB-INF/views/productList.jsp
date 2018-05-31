<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="mapping" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>
            <p class="lead">Check out our products</p>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <td><img src="#" alt="image"></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice}</td>
                <td><a href="<mapping:url value="/productList/viewProduct/${product.productId}"/>">
                    <span class="glyphicon glyphicon-info-sign"></span></a>
                </td>
            </tr>
            </c:forEach>
        </table>

<!-- FOOTER -->
<%@include file="/WEB-INF/views/template/footer.jsp"%>
