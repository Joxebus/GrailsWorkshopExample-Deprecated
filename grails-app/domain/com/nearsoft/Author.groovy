package com.nearsoft

class Author {

    String name

    static hasMany = [books:Book]

    static constraints = {
        name type: 'text'
    }

    String toString(){ name }
}
