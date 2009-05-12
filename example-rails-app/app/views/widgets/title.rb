class Views::Widgets::Title < Erector::RailsWidget
  
  def content
    span :title => title do
      text helpers.truncate(title, :length => 10)
    end
  end
  
end