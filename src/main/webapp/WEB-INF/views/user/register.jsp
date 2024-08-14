<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<h2>
	<spring:message code="user.header.register" />
</h2>
<form:form modelAttribute="member" action="register">
	<table>
		<tr>
			<td><spring:message code="user.userId" /></td>
			<td><form:input path="userId" /></td>
			<td><font color="red"><form:errors path="userId" /> </font></td>
		</tr>

		<tr>
			<td><spring:message code="user.userPw" /></td>
			<td><form:input path="userPw" /></td>
			<td><font color="red"><form:errors path="userPw" /> </font></td>
		</tr>

		<tr>
			<td><spring:message code="user.userName" /></td>
			<td><form:input path="userName" /></td>
			<td><font color="red"><form:errors path="userName" /> </font></td>
		</tr>

		<tr>
			<td><spring:message code="user.job" /></td>
			<td><form:select path="job" items="${jobList }"
					itemLabel="label" itemValue="value" /></td>
			<td><font color="red"><form:errors path="job" /> </font></td>
		</tr>
	</table>
</form:form>
<div>
	<button type="submit" id="btnRegister">
		<spring:message code="action.register" />
	</button>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<button type="button" id="btnList">
			<spring:message code="action.list" />
		</button>
	</sec:authorize>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
	$(document).ready(function() {
		var formObj = $("#member");
		$("#btnRegister").on("click", function() {
			formObj.submit();
		});

		<sec:authorize access="hasRole('ROLE_ADMIN')">
		$("#btnList").on("click", function() {
			self.location = "list";
		});
		</sec:authorize>
	});
</script>