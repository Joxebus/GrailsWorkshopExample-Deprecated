<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails 3 - Fantastic features and where to find them."/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="styles.css"/>
    <g:layoutHead/>
</head>
<body>
<div class="header">
    <g:render template="/common/header"/>
</div>

<div class="page-content">
    <div class="row">
        <div class="col-md-2">
            <g:render template="/common/sidebar"/>
        </div>
        <div class="col-md-10">
            <div class="content-box-large">
                <g:layoutBody/>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="container">

        <div class="copy text-center">
            Copyright 2017 <a href='#'>Nearsoft, Inc.</a>
        </div>

    </div>
</footer>

<!-- Include the main js -->
<asset:javascript src="custom.js"/>
</body>
</html>
