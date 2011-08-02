
<%@ page import="org.pih.warehouse.product.Category" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="custom" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title><warehouse:message code="default.edit.label" args="[entityName]" /></title>
        <!-- Specify content to overload like global navigation links, page titles, etc. -->
		<content tag="pageTitle"><warehouse:message code="default.edit.label" args="[entityName]" /></content>
    </head>
    <body>
        <div class="body">
            <g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${categoryInstance}">
	            <div class="errors">
	                <g:renderErrors bean="${categoryInstance}" as="list" />
	            </div>
            </g:hasErrors>
            <g:form method="post" >
            	<fieldset>
	                <g:hiddenField name="id" value="${categoryInstance?.id}" />
	                <g:hiddenField name="version" value="${categoryInstance?.version}" />
	                <div class="dialog">
	                    <table>
	                        <tbody>
	                        
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="name"><warehouse:message code="category.name.label" default="Name" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'name', 'errors')}">
	                                    <g:textField name="name" value="${categoryInstance?.name}" />
	                                </td>
	                            </tr>
	                        
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="description"><warehouse:message code="category.description.label" default="Description" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'description', 'errors')}">
	                                    <g:textField name="description" value="${categoryInstance?.description}" />
	                                </td>
	                            </tr>
	                        
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="sortOrder"><warehouse:message code="category.sortOrder.label" default="Sort Order" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'sortOrder', 'errors')}">
	                                    <g:textField name="sortOrder" value="${fieldValue(bean: categoryInstance, field: 'sortOrder')}" />
	                                </td>
	                            </tr>
	                        
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="parentCategory"><warehouse:message code="category.parentCategory.label" default="Parent Category" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'parentCategory', 'errors')}">
	                                    <g:select name="parentCategory.id" from="${org.pih.warehouse.product.Category.list()}" optionKey="id" value="${categoryInstance?.parentCategory?.id}" noSelection="['null': '']" />
	                                </td>
	                            </tr>
	                        
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="categories"><warehouse:message code="category.categories.label" default="Categories" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'categories', 'errors')}">
	                                    
<ul>
<g:each in="${categoryInstance?.categories?}" var="c">
    <li><g:link controller="category" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="category" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'category.label', default: 'Category')])}</g:link>

	                                </td>
	                            </tr>
	                        
	                        <%-- 
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="dateCreated"><warehouse:message code="category.dateCreated.label" default="Date Created" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'dateCreated', 'errors')}">
	                                    <g:datePicker name="dateCreated" precision="day" value="${categoryInstance?.dateCreated}"  />
	                                </td>
	                            </tr>
	                        
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="lastUpdated"><warehouse:message code="category.lastUpdated.label" default="Last Updated" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'lastUpdated', 'errors')}">
	                                    <g:datePicker name="lastUpdated" precision="day" value="${categoryInstance?.lastUpdated}"  />
	                                </td>
	                            </tr>
	                        --%>
	                            <tr class="prop">
	                                <td valign="top" class="name">
	                                  <label for="parents"><warehouse:message code="category.parents.label" default="Parents" /></label>
	                                </td>
	                                <td valign="top" class="value ${hasErrors(bean: categoryInstance, field: 'parents', 'errors')}">
	                                    
	                                </td>
	                            </tr>
	                        	                        
                            	<tr class="prop">
		                        	<td valign="top"></td>
		                        	<td valign="top">                        	
						                <div class="buttons">
						                    <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
						                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						                </div>
		    						</td>                    	
	                        	</tr>	                        
	                        </tbody>
	                    </table>
	                </div>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
