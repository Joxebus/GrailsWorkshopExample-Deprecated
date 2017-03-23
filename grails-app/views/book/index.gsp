<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap"/>
    <g:set var="entityName"
           value="${message(code: 'book.label', default: 'Book')}"/>
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

        <div id="list-book" class="table-responsive">
            <h1></h1>
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>

            <table class="table table-striped table-bordered dataTable">
                <thead>
                <tr>
                    <g:sortableColumn property="title"
                                      title="${message(code: 'default.column.value', default: 'Title')}"/>
                    <g:sortableColumn property="author"
                                      title="${message(code: 'default.column.value', default: 'Author')}"/>
                    <g:sortableColumn property="pubDate"
                                      title="${message(code: 'default.column.value', default: 'Pub Date')}"/>
                    <th>
                        ${message(code: 'default.column.value', default: 'Actions')}
                    </th>

                </tr>
                </thead>
                <tbody>
                <g:each in="${bookList}" status="i" var="book">
                    <tr class="${(i%2) ? 'odd': 'even'}">
                        <td><f:display property="title" bean="${book}"/></td>
                        <td><f:display property="author" bean="${book}"/></td>
                        <td><f:display property="pubDate" bean="${book}"/></td>
                        <td>
                            <g:link controller="book" action="show" resource="${book}">
                                <i class="glyphicon glyphicon-book"></i>
                                <g:message code="book.read.label" default="Read"/>
                            </g:link>
                            <g:link controller="book" action="edit" resource="${book}">
                                <i class="glyphicon glyphicon-pencil"></i>
                                <g:message code="book.edit.label" default="Edit"/>
                            </g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${bookCount ?: 0}" max="10"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
