<%@ page import="partypay.grails.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'nameEvent', 'error')} required">
	<label for="nameEvent">
		<g:message code="event.nameEvent.label" default="Name Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameEvent" required="" value="${eventInstance?.nameEvent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'dateEvent', 'error')} required">
	<label for="dateEvent">
		<g:message code="event.dateEvent.label" default="Date Event" />
		<span class="required-indicator">*</span>
	</label>
	<richui:dateChooser name="dateEvent" format="dd.MM.yyyy" value="${new Date()}" firstDayOfWeek="Mo" />
	<!--<g:datePicker name="dateEvent" precision="day"  value="${eventInstance?.dateEvent}"  />-->
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'adressEvent', 'error')} ">
	<label for="adressEvent">
		<g:message code="event.adressEvent.label" default="Adress Event" />
		
	</label>
	<g:textField name="adressEvent" value="${eventInstance?.adressEvent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="event.description.label" default="Description" />
	</label>
	<richui:richTextEditor name="description" value="${eventInstance?.description}" width="525"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'latitude', 'error')} ">
	<label for="latitude">
		<g:message code="event.latitude.label" default="Latitude" />
		
	</label>
	<g:textField name="latitude" value="${eventInstance?.latitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'longitude', 'error')} ">
	<label for="longitude">
		<g:message code="event.longitude.label" default="Longitude" />
		
	</label>
	<g:textField name="longitude" value="${eventInstance?.longitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ticket', 'error')} ">
	<label for="ticket">
		<g:message code="event.ticket.label" default="Ticket" />
		
	</label>
	<g:select name="ticket" from="${partypay.grails.Ticket.list()}" multiple="multiple" optionKey="id" size="5" value="${eventInstance?.ticket*.id}" class="many-to-many"/>
</div>

