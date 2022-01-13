<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>


<petclinic:layout pageName="Products">
	<jsp:body>
        <form:form modelAttribute="product" class="form-horizontal">
            <div class="form-group has-feedback">
            	<petclinic:inputField label="Name" name="name"></petclinic:inputField>
            	<petclinic:inputField label="Price" name="price"></petclinic:inputField>
            	<div class="control-group">
            		<petclinic:selectField label="Product Type" name="productType" size="3" names="${productType}"></petclinic:selectField>
            	</div>
            </div>
            
            <div class="form-group">
            	<div class="col-sm-offset-2 col-sm-10">
            		<input type="hidden" name="id" value="${card.id}"/>
            		<button class="btn btn-default" type="submit">Add Product</button>
            	</div>
            </div>
        </form:form>
    </jsp:body>

</petclinic:layout>