<%@ page import="testingpractice.Estudiante" %>



<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="estudiante.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${estudianteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="estudiante.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="50" required="" value="${estudianteInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="estudiante.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" min="18" value="${estudianteInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="estudiante.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="genero" maxlength="1" required="" value="${estudianteInstance?.genero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="estudiante.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${estudianteInstance.cedula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'semestre', 'error')} required">
	<label for="semestre">
		<g:message code="estudiante.semestre.label" default="Semestre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="semestre" type="number" min="1" max="20" value="${estudianteInstance.semestre}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'codigoInst', 'error')} required">
	<label for="codigoInst">
		<g:message code="estudiante.codigoInst.label" default="Codigo Inst" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigoInst" type="number" value="${estudianteInstance.codigoInst}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="estudiante.cursos.label" default="Cursos" />
		
	</label>
	<g:select name="cursos" from="${testingpractice.Curso.list()}" multiple="multiple" optionKey="id" size="5" value="${estudianteInstance?.cursos*.id}" class="many-to-many"/>

</div>

