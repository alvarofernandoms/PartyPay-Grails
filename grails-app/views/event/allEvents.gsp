<%@ page import="partypay.grails.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
		    <div class="row">
		        <div class="span6 heading">
		            <h2>Events</h2>
		        </div>
		    </div>
		    <div class="row">
		        <div class="span8">
		            <g:hasErrors bean="${eventInstance}">
		                <div class="alert alert-error errors">
		                    <g:renderErrors bean="${eventInstance}" as="list" />
		                </div>
		            </g:hasErrors>
		        </div>
		    </div>
		    <div class="row">
		        <div class="span12">
		            <table class="table table-striped table-bordered">
		                <thead>
		                    <tr>
		                        <th>Event</th>
		                        <th>Description</th>
		                        <th>Date</th>		   
		                        <th>&nbsp;</th>
		                        <th>&nbsp;</th>
		                        <th>&nbsp;</th>
		                        <th>&nbsp;</th>
		                        <th>&nbsp;</th>
		                        <th>&nbsp;</th>
		                        <th>&nbsp;</th>
		                    </tr>
		                </thead>
		                <tbody>
		                    <g:each in="${partypay.grails.Event.list()}" var="event">
		                        <tr>
		                            <td>
		                                ${event.nameEvent}
		                            </td>
		                            <td>
		                                ${event.description}
		                            </td>
		                            <td>
		                                <g:formatDate date="${event.dateEvent}" formatName="customDateFormat"/>
		                            </td>
		                            	<g:each in="${event.ticket.toList()}" var="ticket">				                            
				                            <td>
				                                ${ticket.title}
				                            </td>
				                            <td>
				                                <g:formatNumber number="${ticket.ticketValue}"
				                                    currencyCode="USD" type="currency" />
				                            </td>
				                            <td>
				                                <g:form action="addToCart">
				                                    <g:hiddenField name="eventId" value="${ticket.id}" />
				                                    <g:submitButton action="" name="addToCart"
				                                        value="Add To Cart" />
				                                </g:form>
				                            </td>
				                        </g:each>
		                        </tr>
		                    </g:each>
		                </tbody>
		            </table>
		        </div>
		    </div>
		</div>
	</body>
</html>
