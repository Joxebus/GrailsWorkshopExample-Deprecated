<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap"/>
    <g:set var="entityName"
           value="${message(code: 'author.label', default: 'Author')}"/>
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

        <div id="list-author" class="table-responsive">
            <h1></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>


            <table class="table table-striped table-bordered dataTable">
                <thead>
                <tr>
                    <g:sortableColumn property="name"
                                      title="${message(code: 'default.column.value', default: "Author's Name")}"/>
                    <th>
                        ${message(code: 'default.column.value', default: 'Actions')}
                    </th>

                </tr>
                </thead>
                <tbody>
                <g:each in="${authorList}" status="i" var="author">
                    <tr>
                        <td><f:display property="name" bean="${author}"/></td>
                        <td>
                            <g:link controller="author" action="show" resource="${author}">
                                <i class="glyphicon glyphicon-eye-open"></i>
                                <g:message code="default.read.label" default="See"/>
                            </g:link>
                            <g:link controller="author" action="edit" resource="${author}">
                                <i class="glyphicon glyphicon-pencil"></i>
                                <g:message code="book.edit.label" default="Edit"/>
                            </g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${authorCount ?: 0}" max="10"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
