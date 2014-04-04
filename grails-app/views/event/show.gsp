
<%@ page import="partypay.grails.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.nameEvent}">
				<li class="fieldcontain">
					<span id="nameEvent-label" class="property-label"><g:message code="event.nameEvent.label" default="Name Event" /></span>
					
						<span class="property-value" aria-labelledby="nameEvent-label"><g:fieldValue bean="${eventInstance}" field="nameEvent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.dateEvent}">
				<li class="fieldcontain">
					<span id="dateEvent-label" class="property-label"><g:message code="event.dateEvent.label" default="Date Event" /></span>
					
						<span class="property-value" aria-labelledby="dateEvent-label"><g:formatDate date="${eventInstance?.dateEvent}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.adressEvent}">
				<li class="fieldcontain">
					<span id="adressEvent-label" class="property-label"><g:message code="event.adressEvent.label" default="Adress Event" /></span>
					
						<span class="property-value" aria-labelledby="adressEvent-label"><g:fieldValue bean="${eventInstance}" field="adressEvent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="event.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${eventInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="event.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${eventInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="event.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${eventInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.ticket}">
				<li class="fieldcontain">
					<span id="ticket-label" class="property-label"><g:message code="event.ticket.label" default="Ticket" /></span>
					
						<g:each in="${eventInstance.ticket}" var="t">
						<span class="property-value" aria-labelledby="ticket-label"><g:link controller="ticket" action="show" id="${t.id}">${t?.title}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${eventInstance?.id}" />
					<g:link class="edit" action="edit" id="${eventInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
