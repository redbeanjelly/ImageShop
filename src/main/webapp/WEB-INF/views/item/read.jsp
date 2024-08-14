<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<h2>
	<spring:message code="item.header.read" />
</h2>

<form:form modelAttribute="item" action="buy">
	<form:hidden path="itemId" />
	<form:hidden path="pictureUrl" />
	<form:hidden path="previewUrl" />

	<%-- 	<!-- 현재 페이지의 번호와 페이징 크기를 숨겨진 필드 요소를 사용하여 전달한다. -->
	<input type="hidden" name="page" value="${pgrq.page }" />
	<input type="hidden" name="sizePerPage" value="${pgrq.sizePerPage }" /> --%>

	<table>
		<tr>
			<td><spring:message code="item.itemName" /></td>
			<td><form:input path="itemName" /></td>
			<td><font color="red"><form:errors path="itemName" /> </font></td>
		</tr>

		<tr>
			<td><spring:message code="item.itemPrice" /></td>
			<td><form:input path="price" />&nbsp;원</td>
			<td><font color="red"><form:errors path="price" /> </font></td>
		</tr>

		<tr>
			<td><spring:message code="item.preview" /></td>
			<td><img src="display?itemId=${item.itemId }" width="210">
			</td>
		</tr>

		<tr>
			<td><spring:message code="item.itemDescription" /></td>
			<td><form:textarea path="description" /></td>
			<td><font color="red"><form:errors path="description" />
			</font></td>
		</tr>
	</table>
</form:form>

<div>
	<button type="submit" id="btnBuy">
		<spring:message code="action.buy" />
	</button>

	<button type="submit" id="btnList">
		<spring:message code="action.list" />
	</button>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
	$(document).ready(function() {
		var formObj = $("#item");
		
		$("#btnBuy").on("click", function() {
			formObj.submit();
		});

		/* // 현재 페이지 번호와 페이징 크기
		var pageObj = $("#page");
		var sizePerPageObj = $("#sizePerPage");
		var pageVal = pageObj.val();
		var sizePerPageVal = sizePerPageObj.val(); */

		$("#btnList").on("click", function() {
			self.location = "list";
		});

	});
</script>