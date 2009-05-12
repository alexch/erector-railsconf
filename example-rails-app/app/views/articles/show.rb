class Views::Articles::Show < Views::Layouts::Application

  def main_content
    h2 "Article: %s" % article.title

    div article.content

    h3 "Comments"
    
    article.comments.each do |comment|
      widget Views::Comments::Show.new(:comment => comment)
    end
  end

  def footer
    super
    text " | %s comments" % article.comments.length
  end

end
