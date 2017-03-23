<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="bootstrap" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="content-box-large">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2>
                        <g:message code="default.create.label" args="[entityName]" />
                    </h2>
                </div>
            </div>
            <div class="panel-body">
            <g:if test="\${flash.message}">
            <div class="alert alert-info" role="alert">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${this.${propertyName}}">
            <ul class="alert alert-info" role="alert">
                <g:eachError bean="\${this.${propertyName}}" var="error">
                <li class="alert-link" <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save" class="form-horizontal">
                <fieldset class="form">
                    <f:all bean="${propertyName}"/>
                </fieldset>
                <br/>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-primary" value="\${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
            </div>
        </div>
    </body>
</html>
