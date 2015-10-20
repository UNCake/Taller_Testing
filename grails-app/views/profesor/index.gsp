
<%@ page import="testingpractice.Profesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profesor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profesor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'profesor.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'profesor.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'profesor.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="genero" title="${message(code: 'profesor.genero.label', default: 'Genero')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'profesor.cedula.label', default: 'Cedula')}" />
					
						<g:sortableColumn property="oficina" title="${message(code: 'profesor.oficina.label', default: 'Oficina')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profesorInstance.id}">${fieldValue(bean: profesorInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: profesorInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "genero")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "cedula")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "oficina")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profesorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
