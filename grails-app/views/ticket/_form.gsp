<%@ page import="partypay.grails.Ticket" %>


<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="ticket.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${ticketInstance?.title}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'ticketValue', 'error')} required">
	<label for="ticketValue">
		<g:message code="ticket.ticketValue.label" default="Ticket Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ticketValue" value="${fieldValue(bean: ticketInstance, field: 'ticketValue')}" required=""/>
</div>


<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="ticket.description.label" default="Description" />
		
	</label>
	<richui:richTextEditor name="description" value="${ticketInstance?.description}" width="525"/>
</div>


