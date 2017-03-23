<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="bootstrap" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="content-box-large">
        <div class="panel-heading">
            <div class="panel-title">
                <h2>
                    <g:message code="default.edit.label" args="[entityName]" />
                </h2>
            </div>
        </div>
        <div class="panel-body">
            <g:if test="\${flash.message}">
            <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${this.${propertyName}}">
            <ul class="errors" role="alert">
                <g:eachError bean="\${this.${propertyName}}" var="error">
                <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="\${this.${propertyName}}" method="PUT" class="form-horizontal">
                <g:hiddenField name="version" value="\${this.${propertyName}?.version}" />
                <fieldset class="form">
                    <f:all bean="${propertyName}"/>
                </fieldset>
                <br/>
                <fieldset class="buttons">
                    <input type="submit" class="btn btn-primary" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
        </div>
    </body>
</html>
