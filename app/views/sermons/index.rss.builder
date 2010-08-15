# index.rss.builder
xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Trinity United Methodist Church, PBG FL"
    xml.description "Sermons"
    xml.link formatted_articles_url(:rss)
    
    for sermon in @sermons
      xml.item do
        xml.title sermon.title
        xml.description sermon.description
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link formatted_article_url(article, :rss)
        xml.guid formatted_article_url(article, :rss)
      end
    end
  end
end