<%@ page import="partypay.grails.Advertising" %>



<div class="fieldcontain ${hasErrors(bean: advertisingInstance, field: 'nameContractor', 'error')} required">
	<label for="nameContractor">
		<g:message code="advertising.nameContractor.label" default="Name Contractor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameContractor" required="" value="${advertisingInstance?.nameContractor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertisingInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="advertising.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${advertisingInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: advertisingInstance, field: 'advertisingMessage', 'error')} ">
	<label for="advertisingMessage">
		<g:message code="advertising.advertisingMessage.label" default="Advertising Message" />
		
	</label>
	<g:textField name="advertisingMessage" value="${advertisingInstance?.advertisingMessage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertisingInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="advertising.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${advertisingInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: advertisingInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="advertising.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: advertisingInstance, field: 'value')}" required=""/>
</div>

