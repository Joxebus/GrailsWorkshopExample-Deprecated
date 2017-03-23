<div class="sidebar content-box" style="display: block;">
    <ul class="nav">
        <!-- Main menu -->
        <li class="current"><a href="${createLink(uri:'/')}"><i class="glyphicon glyphicon-home"></i> Home</a></li>
        <li><a href="${createLink(controller: 'book')}"><i class="glyphicon glyphicon-list"></i> Books </a></li>
        <li><a href="${createLink(controller: 'author')}"><i class="glyphicon glyphicon-list"></i> Authors </a></li>
        <!-- Configuration -->
        <li><a href="#">Env: ${grails.util.Environment.current.name}</a></li>
        <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
        <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
        <li role="separator" class="divider"></li>
        <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>

    </ul>
</div>
