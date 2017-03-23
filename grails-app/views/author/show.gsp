<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="bootstrap" />
        <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="content-box-large">
        <div class="panel-heading">
            <div class="panel-title">
                <h2>
                    <g:message code="default.show.label" args="[entityName]" />
                </h2>
            </div>
        </div>
        <div class="panel-body">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="author" />
            <g:form resource="${this.author}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-primary" action="edit" resource="${this.author}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
        </div>
    </body>
</html>
