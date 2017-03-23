package com.nearsoft.categories

/**
 * Converts a RSS feed into a list of map with title, author, publication date and link
 */
class FeedReader {

    static String FORMAT = "EEE, dd MMM yyyy HH:mm:ss zzz";

    static List readBookFeed(String url){
        def rss = new XmlSlurper().parseText(url.toURL().text)
        def list = []
        rss.channel.item.each{ entry ->
            def book = [title:entry.title.toString(),
                        author: entry.creator.toString(),
                        description:entry.description.toString(),
                        pubDate:Date.parse(FORMAT, entry.pubDate.toString()),
                        link:entry.link.toString()]
            list.add(book)
        }
        list
    }

}
