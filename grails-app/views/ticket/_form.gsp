<%@ page import="partypay.grails.Ticket" %>



<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="ticket.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${ticketInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="ticket.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${ticketInstance?.title}"/>
</div>

