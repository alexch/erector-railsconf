require "../config/environment"

class WidgetExample < Erector::RailsWidget

  def content
    link_to "Articles", :controller => "articles"
  end
  
end
