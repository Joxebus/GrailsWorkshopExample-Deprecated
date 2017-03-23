<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap"/>
    <g:set var="entityName"
           value="\${message(code: '${propertyName}.label', default: '${className}')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-box-large">
    <div class="panel-heading">
        <div class="panel-title">
            <h2>
                <g:message code="default.list.label" args="[entityName]" />
            </h2>
        </div>

        <div class="panel-options">
            <g:link class="create" action="create">
                <i class="glyphicon glyphicon-plus"></i>
                <g:message code="default.new.label" args="[entityName]"/>
            </g:link>
        </div>
    </div>

    <div class="panel-body">

        <div id="list-${propertyName}" class="table-responsive">
            <h1></h1>
            <g:if test="\${flash.message}">
                <div class="alert alert-info" role="alert">\${flash.message}</div>
            </g:if>
            <f:table collection="\${${propertyName}List}" />

            <div class="pagination">
                <g:paginate total="\${${propertyName}Count ?: 0}"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
