package grailsworkshop

import com.nearsoft.Author
import com.nearsoft.Book
import com.nearsoft.categories.FeedReader

class BootStrap {

    def init = { servletContext ->

        log.debug("Start bootstrapping...")
        if(!Book.count()){
            def books
            log.debug("Start loading Books")
            use(FeedReader){
                books = "http://feeds.feedburner.com/nybooks".readBookFeed()
                // books = "https://www.bookbrowse.com/rss/newest_reader_reviews.rss".readBookFeed()
                for(bookProperties in books){
                    log.debug("Saving book $bookProperties")
                    def book = new Book(
                            title:bookProperties.title,
                            description: bookProperties.description,
                            link:bookProperties.link,
                            pubDate:bookProperties.pubDate
                    )

                    Author author = Author.findByNameLike(bookProperties.author)
                    if(author){
                        author.addToBooks(book).save(failOnError: true, flush:true)
                    }else{
                        new Author(name: bookProperties.author)
                                .addToBooks(book)
                                .save(failOnError:true, flush:true)
                    }
                }
            }

            log.debug("Finish to load Books")
        }
    }
    def destroy = {
    }
}
