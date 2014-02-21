<%@ page import="org.chccc.Family" %>



<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="family.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${familyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="family.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${familyInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="family.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${familyInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="family.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${familyInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="family.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${familyInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'postalCode', 'error')} ">
	<label for="postalCode">
		<g:message code="family.postalCode.label" default="Postal Code" />
		
	</label>
	<g:textField name="postalCode" value="${familyInstance?.postalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'homePhone', 'error')} ">
	<label for="homePhone">
		<g:message code="family.homePhone.label" default="Home Phone" />
		
	</label>
	<g:textField name="homePhone" value="${familyInstance?.homePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="family.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${familyInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="family.photo.label" default="Photo" />
		
	</label>
	<input type="file" id="photo" name="photo" />
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="family.members.label" default="Members" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${familyInstance?.members?}" var="m">
    <li><g:link controller="person" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="person" action="create" params="['family.id': familyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'person.label', default: 'Person')])}</g:link>
</li>
</ul>

</div>

