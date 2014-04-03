<%@ page import="partypay.grails.Comments" %>



<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="comments.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${commentsInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'dateOfPublication', 'error')} required">
	<label for="dateOfPublication">
		<g:message code="comments.dateOfPublication.label" default="Date Of Publication" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfPublication" precision="day"  value="${commentsInstance?.dateOfPublication}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commentsInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="comments.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${commentsInstance?.title}"/>
</div>

