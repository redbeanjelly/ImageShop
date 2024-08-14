<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<h2>
	<spring:message code="notice.header.modify" />
</h2>

<form:form modelAttribute="notice" action="modify">
	<form:hidden path="noticeNo" />

	<%-- 	<!-- 현재 페이지의 번호와 페이징 크기를 숨겨진 필드 요소를 사용하여 전달 -->
	<input type="hidden" name="page" value="${pgrq.page }" />
	<input type="hidden" name="sizePerPage" value="${pgrq.sizePerPage }" /> --%>

	<table>
		<tr>
			<td><spring:message code="notice.title" /></td>
			<td><form:input path="title" /></td>
			<td><font color="red"><form:errors path="title"></form:errors>
			</font></td>
		</tr>

		<tr>
			<td><spring:message code="notice.content" /></td>
			<td><form:textarea path="content" /></td>
			<td><font color="red"><form:errors path="content" /> </font></td>
		</tr>
	</table>
</form:form>


<div>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<button type="submit" id="btnModify">
			<spring:message code="action.modify" />
		</button>
	</sec:authorize>

	<button type="submit" id="btnList">
		<spring:message code="action.list" />
	</button>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
	$(document).ready(function() {
		var formObj = $("#notice");

		$("#btnModify").on("click", function() {
			formObj.submit();
		});

		$("#btnList").on("click", function() {
			self.location = "list";
		});

	});
</script>