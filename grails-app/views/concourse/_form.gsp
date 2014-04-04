<%@ page import="partypay.grails.Concourse" %>



<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'nameEvent', 'error')} required">
	<label for="nameEvent">
		<g:message code="concourse.nameEvent.label" default="Name Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameEvent" required="" value="${concourseInstance?.nameEvent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'dateEvent', 'error')} required">
	<label for="dateEvent">
		<g:message code="concourse.dateEvent.label" default="Date Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateEvent" precision="day"  value="${concourseInstance?.dateEvent}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'challenge', 'error')} required">
	<label for="challenge">
		<g:message code="concourse.challenge.label" default="Challenge" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="challenge" required="" value="${concourseInstance?.challenge}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'prize', 'error')} required">
	<label for="prize">
		<g:message code="concourse.prize.label" default="Prize" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prize" required="" value="${concourseInstance?.prize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'adressEvent', 'error')} ">
	<label for="adressEvent">
		<g:message code="concourse.adressEvent.label" default="Adress Event" />
		
	</label>
	<g:textField name="adressEvent" value="${concourseInstance?.adressEvent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="concourse.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${concourseInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'latitude', 'error')} ">
	<label for="latitude">
		<g:message code="concourse.latitude.label" default="Latitude" />
		
	</label>
	<g:textField name="latitude" value="${concourseInstance?.latitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'longitude', 'error')} ">
	<label for="longitude">
		<g:message code="concourse.longitude.label" default="Longitude" />
		
	</label>
	<g:textField name="longitude" value="${concourseInstance?.longitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: concourseInstance, field: 'ticket', 'error')} ">
	<label for="ticket">
		<g:message code="concourse.ticket.label" default="Ticket" />
		
	</label>
	<g:select name="ticket" from="${partypay.grails.Ticket.list()}" multiple="multiple" optionKey="id" size="5" value="${concourseInstance?.ticket*.id}" class="many-to-many"/>
</div>

