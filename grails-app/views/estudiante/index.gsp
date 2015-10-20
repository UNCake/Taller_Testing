
<%@ page import="testingpractice.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estudiante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estudiante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'estudiante.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'estudiante.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'estudiante.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="genero" title="${message(code: 'estudiante.genero.label', default: 'Genero')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'estudiante.cedula.label', default: 'Cedula')}" />
					
						<g:sortableColumn property="semestre" title="${message(code: 'estudiante.semestre.label', default: 'Semestre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estudianteInstanceList}" status="i" var="estudianteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estudianteInstance.id}">${fieldValue(bean: estudianteInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "genero")}</td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "cedula")}</td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "semestre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estudianteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
