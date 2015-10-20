<%@ page import="testingpractice.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="curso.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${cursoInstance.codigo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="curso.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${cursoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'creditos', 'error')} required">
	<label for="creditos">
		<g:message code="curso.creditos.label" default="Creditos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="creditos" type="number" min="1" max="5" value="${cursoInstance.creditos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="curso.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${cursoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${testingpractice.Profesor.list()}" optionKey="id" required="" value="${cursoInstance?.profesor?.id}" class="many-to-one"/>

</div>

