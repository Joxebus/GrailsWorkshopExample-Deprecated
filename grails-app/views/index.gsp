<!doctype html>
<html>
<head>
    <meta name="layout" content="bootstrap"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<div class="content-box-large">
    <div class="panel-heading">
        <div class="panel-title center-block">
            <h1>Welcome to Grails</h1>
        </div>

        <div class="panel-options">
            <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
            <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
        </div>
    </div>

    <div class="panel-body">
        <p>
            Grails is a Java Web Framework that help us reduce development time of web applications by using the Software Design Paradigm “Convention over Configuration”.
            It is a Groovy-based framework, which is a language for the JVM, if you are a ruby, python or Java developer most of the concepts will be easy to understand,
            Grails give you the required tools to start developing with almost none effort from the beginning,
            it also allows you to generate some components on the fly but giving you the opportunity to define or override the default behavior.
        </p>

        <p>
            The objetive of this workshop is to give the developer a Java framework alternative, which has dynamic and static capabilities,
            reduce the effort during configuration of new projects, create demos or full projects compatible with the Java tools known,
            thus, increasing productivity and reducing development time.
        </p>

        <h2><a id="Content_6"></a>Content</h2>
        <ul>
            <li>Domains</li>
            <li>Controllers</li>
            <li>Default and custom views</li>
            <li>Category to reed a feed</li>
            <li>Bootstrap configuration to load Data</li>
            <li>Custom Templates</li>
        </ul>

        <h2><a id="Tech_14"></a>Tech</h2>
        <ul>
            <li>Groovy 2.4.7</li>
            <li>Java 1.8</li>
            <li>Grails 3.2.6</li>
        </ul>

        <h3><a id="Installation_19"></a>Installation</h3>
        <pre><code class="language-sh">
            $ curl <span class="hljs-operator">-s</span> <span
                class="hljs-string">"https://get.sdkman.io"</span> | bash
            $ sdk install grails <span class="hljs-number">3.2</span>.<span class="hljs-number">6</span>
            $ grails --version
            | Grails Version: <span class="hljs-number">3.2</span>.<span
                    class="hljs-number">6</span>
            | Groovy Version: <span class="hljs-number">2.4</span>.<span
                    class="hljs-number">7</span>
            | JVM Version: <span class="hljs-number">1.8</span>.<span
                    class="hljs-number">0</span>_74
        </code></pre>

        <h3><a id="Commands_used_for_this_example_29"></a>Commands used for this example</h3>
        <pre><code class="language-sh">
            $ grails create-domain-class com.nearsoft.Author
            $ grails create-domain-class com.nearsoft.Book
            $ grails generate-all com.nearsoft.Author
            $ grails generate-all com.nearsoft.Book
            $ grails install-templates
        </code></pre>


    </div>
</div>

</body>
</html>
