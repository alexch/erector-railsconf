class Views::Comments::Show < Erector::RailsWidget
  
  def content
    div :class => "comment" do
      h4 comment.username
      div :class => "date" do
        rawtext helpers.formatted_date(comment)
      end
      div comment.content, :class => "content"
    end
  end
  
end