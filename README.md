# Grails 3 - Workshop Example

[![N|Solid](https://nearsoft.com/admin/wp-content/themes/Nearsoftv1/img/nearsoft.png)](http://nearsoft.com)

This repo contains an example of a bookstore with **Grails** framework. I'm assuming you have JDK 1.7 or higher installed.

## Content
  - Domains
  - Controllers
  - Default and custom views
  - Category to reed a feed
  - Bootstrap configuration to load Data
  - Custom Templates

## Tech
  - Groovy 2.4.7
  - Java 1.8
  - Grails 3.2.6

### Installation
```sh
$ curl -s "https://get.sdkman.io" | bash
$ sdk install grails 3.2.6
$ grails --version
| Grails Version: 3.2.6
| Groovy Version: 2.4.7
| JVM Version: 1.8.0_74
```

### Commands used for this example
``` sh
$ grails create-domain-class com.nearsoft.Author
$ grails create-domain-class com.nearsoft.Book
$ grails generate-all com.nearsoft.Author
$ grails generate-all com.nearsoft.Book
$ grails install-templates
```

### Run with grails command
``` sh
$ grails run-app
```

### Run with gradle
``` sh
$ gradle bootRun
```


### Bootstrap template

Bootstrap Admin Theme: https://codeload.github.com/VinceG/Bootstrap-Admin-Theme-3/zip/master
