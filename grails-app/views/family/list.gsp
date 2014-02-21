
<%@ page import="org.chccc.Family" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'family.label', default: 'Family')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-family" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-family" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'family.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address1" title="${message(code: 'family.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'family.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'family.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'family.state.label', default: 'State')}" />
					
						<g:sortableColumn property="postalCode" title="${message(code: 'family.postalCode.label', default: 'Postal Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${familyInstanceList}" status="i" var="familyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${familyInstance.id}">${fieldValue(bean: familyInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: familyInstance, field: "address1")}</td>
					
						<td>${fieldValue(bean: familyInstance, field: "address2")}</td>
					
						<td>${fieldValue(bean: familyInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: familyInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: familyInstance, field: "postalCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${familyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
