
<%@ page import="org.pih.warehouse.core.User" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><warehouse:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
    <div class="body">
		    <g:if test="${flash.message}">
		    	<div class="message">${flash.message}</div>
	        </g:if>

            <div>
				<span class="menuButton">
           			<g:link controller="user" action="create" class="new">Add new user</g:link>
	           	</span>
           	</div>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="id" title="${message(code: 'user.id.label', default: 'Id')}" />
                            <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
                            <g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
                            <g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
                            <g:sortableColumn property="locale" title="${message(code: 'user.locale.label', default: 'Locale')}" />
                        <!--      <g:sortableColumn property="email" title="${message(code: 'user.role.label', default: 'Roles')}" />  -->
                            <g:sortableColumn property="active" title="${message(code: 'user.active.label', default: 'Active')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: userInstance, field: "id")}</td>
                            <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
                            <td>${fieldValue(bean: userInstance, field: "name")}</td>
                            <td>${fieldValue(bean: userInstance, field: "email")}</td>
                            <td>${fieldValue(bean: userInstance, field: "locale.displayName")}</td>
                   <!--          <td>${fieldValue(bean: userInstance, field: "roles")}</td>  -->
                            <td>
                            	<g:if test="${userInstance?.active }">Y</g:if>
                            	<g:else>N</g:else>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${userInstanceTotal}" />
            </div>
        </div>

    </body>
</html>
