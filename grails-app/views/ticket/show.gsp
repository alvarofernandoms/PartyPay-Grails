
<%@ page import="partypay.grails.Ticket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ticket.label', default: 'Ticket')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ticket" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ticket" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ticket">
			
				<g:if test="${ticketInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="ticket.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${ticketInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.ticketValue}">
				<li class="fieldcontain">
					<span id="ticketValue-label" class="property-label"><g:message code="ticket.ticketValue.label" default="Ticket Value" /></span>
					
						<span class="property-value" aria-labelledby="ticketValue-label"><g:fieldValue bean="${ticketInstance}" field="ticketValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="ticket.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${ticketInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ticketInstance?.id}" />
					<g:link class="edit" action="edit" id="${ticketInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
