
<%@ page import="partypay.grails.Advertising" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advertising.label', default: 'Advertising')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-advertising" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-advertising" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nameContractor" title="${message(code: 'advertising.nameContractor.label', default: 'Name Contractor')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'advertising.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="advertisingMessage" title="${message(code: 'advertising.advertisingMessage.label', default: 'Advertising Message')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'advertising.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'advertising.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${advertisingInstanceList}" status="i" var="advertisingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${advertisingInstance.id}">${fieldValue(bean: advertisingInstance, field: "nameContractor")}</g:link></td>
					
						<td><g:formatDate date="${advertisingInstance.startDate}" /></td>
					
						<td>${fieldValue(bean: advertisingInstance, field: "advertisingMessage")}</td>
					
						<td><g:formatDate date="${advertisingInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: advertisingInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${advertisingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
