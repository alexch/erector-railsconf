module CommentsHelper
  
  def formatted_date(comment)
    "".tap do |html|
      html << content_tag(:span, comment.created_at.strftime("%b"))
      html << content_tag(:span, comment.created_at.day)
      html << content_tag(:span, comment.created_at.year)
    end
  end
  
end