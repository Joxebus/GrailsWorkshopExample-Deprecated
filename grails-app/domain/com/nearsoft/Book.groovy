package com.nearsoft

class Book {

    static belongsTo = [author:Author]

    String title
    String link
    String description
    Date pubDate
    Date dateCreated


    static constraints = {
        title blank:false, sqlType:'text'
        link blank:false, sqlType:'text'
        description sqlType:'text', widget:'textarea'
        dateCreated display:false
    }

    String toString(){ title }
}
