
<%@ page import="partypay.grails.Advertising" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advertising.label', default: 'Advertising')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-advertising" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-advertising" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list advertising">
			
				<g:if test="${advertisingInstance?.nameContractor}">
				<li class="fieldcontain">
					<span id="nameContractor-label" class="property-label"><g:message code="advertising.nameContractor.label" default="Name Contractor" /></span>
					
						<span class="property-value" aria-labelledby="nameContractor-label"><g:fieldValue bean="${advertisingInstance}" field="nameContractor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisingInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="advertising.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${advertisingInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisingInstance?.advertisingMessage}">
				<li class="fieldcontain">
					<span id="advertisingMessage-label" class="property-label"><g:message code="advertising.advertisingMessage.label" default="Advertising Message" /></span>
					
						<span class="property-value" aria-labelledby="advertisingMessage-label"><g:fieldValue bean="${advertisingInstance}" field="advertisingMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisingInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="advertising.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${advertisingInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertisingInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="advertising.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${advertisingInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${advertisingInstance?.id}" />
					<g:link class="edit" action="edit" id="${advertisingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
