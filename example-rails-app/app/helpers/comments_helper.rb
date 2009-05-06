module CommentsHelper
  
  def display_date(comment)
    "".tap do |html|
      html << content_tag(:span, comment.date.year, :class => "Foo")
    end
  end
  
end