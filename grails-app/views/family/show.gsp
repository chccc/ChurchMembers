
<%@ page import="org.chccc.Family" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'family.label', default: 'Family')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-family" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-family" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list family">
			
				<g:if test="${familyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="family.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${familyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="family.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${familyInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="family.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${familyInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="family.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${familyInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="family.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${familyInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="family.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${familyInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="family.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${familyInstance}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="family.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${familyInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label">
					<img src="${createLink(action:'displayPhoto', id:familyInstance?.id)}" />
					</span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.members}">
				<li class="fieldcontain">
					<span id="members-label" class="property-label"><g:message code="family.members.label" default="Members" /></span>
					
						<g:each in="${familyInstance.members}" var="m">
						<span class="property-value" aria-labelledby="members-label"><g:link controller="person" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${familyInstance?.id}" />
					<g:link class="edit" action="edit" id="${familyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
