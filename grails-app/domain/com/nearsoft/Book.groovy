package com.nearsoft

class Book {

    static belongsTo = [author:Author]

    String title
    String link
    String description
    Date pubDate
    Date dateCreated


    static constraints = {
        title blank:false
        link blank:false, sqlType:'text'
        description sqlType:'text', widget:'textarea'
        author blank:false, nullable:false
        dateCreated display:false
    }

    String toString(){ title }
}
