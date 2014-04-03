<%@ page import="partypay.grails.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="user.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${userInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'postalCode', 'error')} required">
	<label for="postalCode">
		<g:message code="user.postalCode.label" default="Postal Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postalCode" required="" value="${userInstance?.postalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${userInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="user.rg.label" default="Rg" />
		
	</label>
	<g:textField name="rg" value="${userInstance?.rg}"/>
</div>

