<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="bootstrap" />
        <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
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
            <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.author}">
            <ul class="alert alert-danger" role="alert">
                <g:eachError bean="${this.author}" var="error">
                <li class="alert-link" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save" class="form-horizontal">
                <fieldset class="form">
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><g:message code="book.form.title" default="Title"/></label>
                        <div class="col-sm-8">
                            <g:textField name="name" value="${this.author.name}" class="form-control"/>
                        </div>

                    </div>
                </fieldset>
                <br/>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
            </div>
        </div>
    </body>
</html>
