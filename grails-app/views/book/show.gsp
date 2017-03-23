<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap"/>
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-box-large">

    <div class="row">
        <div class="col-md-8">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2>
                        <f:display property="title" bean="book"/>
                    </h2>
                    <h4>
                        <f:display property="pubDate" bean="book"/> -
                        <f:display property="author" bean="book"/>
                    </h4>
                </div>
            </div>

            <div class="panel-body blog-post">
                <p>
                    <f:display property="description" bean="book"/>
                </p>

                <br/>

                <p>
                    <a href="${book.link}" target="_blank">${book.link}</a>
                </p>
            </div>

        </div>

        <div class="col-md-2"></div>
    </div>
</div>
</body>
</html>
