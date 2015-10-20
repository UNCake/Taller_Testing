<%@ page import="testingpractice.Profesor" %>



<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="profesor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${profesorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="profesor.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="50" required="" value="${profesorInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="profesor.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" min="18" value="${profesorInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="profesor.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="genero" maxlength="1" required="" value="${profesorInstance?.genero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="profesor.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${profesorInstance.cedula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'oficina', 'error')} required">
	<label for="oficina">
		<g:message code="profesor.oficina.label" default="Oficina" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="oficina" type="number" min="1" max="50" value="${profesorInstance.oficina}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="profesor.cursos.label" default="Cursos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${profesorInstance?.cursos?}" var="c">
    <li><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="curso" action="create" params="['profesor.id': profesorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'curso.label', default: 'Curso')])}</g:link>
</li>
</ul>


</div>

