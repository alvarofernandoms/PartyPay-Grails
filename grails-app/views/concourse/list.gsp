
<%@ page import="partypay.grails.Concourse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concourse.label', default: 'Concourse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-concourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-concourse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nameEvent" title="${message(code: 'concourse.nameEvent.label', default: 'Name Event')}" />
					
						<g:sortableColumn property="dateEvent" title="${message(code: 'concourse.dateEvent.label', default: 'Date Event')}" />
					
						<g:sortableColumn property="challenge" title="${message(code: 'concourse.challenge.label', default: 'Challenge')}" />
					
						<g:sortableColumn property="prize" title="${message(code: 'concourse.prize.label', default: 'Prize')}" />
					
						<g:sortableColumn property="adressEvent" title="${message(code: 'concourse.adressEvent.label', default: 'Adress Event')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'concourse.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${concourseInstanceList}" status="i" var="concourseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${concourseInstance.id}">${fieldValue(bean: concourseInstance, field: "nameEvent")}</g:link></td>
					
						<td><g:formatDate date="${concourseInstance.dateEvent}" /></td>
					
						<td>${fieldValue(bean: concourseInstance, field: "challenge")}</td>
					
						<td>${fieldValue(bean: concourseInstance, field: "prize")}</td>
					
						<td>${fieldValue(bean: concourseInstance, field: "adressEvent")}</td>
					
						<td>${fieldValue(bean: concourseInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${concourseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
